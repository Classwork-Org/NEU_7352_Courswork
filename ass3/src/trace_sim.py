#!/bin/python
import progressbar
import networkx as nx
import pprint
import json
import pdb
from abc import ABC, abstractmethod
from enum import Enum
# from pudb import set_trace; set_trace()

"""
Two run this script please install networkx and progressbar using:
pip install networkx 
pip install progressbar


run with python >= 3.5 because of networkx

ALWAYS USE A VIRTUAL ENVIORNMENT 
"""


class BranchPredictorUtilities():
	"""
	Contains Enums for branch predictor related quantities (Taken and not Taken)
	and also the twobitcounter state machine
	"""
	class BranchResult(Enum):
	    
	    Taken = 1
	    NotTaken = 0

	    def convertToInt(self):
	    	return 1 if self == BranchPredictorUtilities.BranchResult.Taken else 0

	    def invert(self):
	    	if self == BranchPredictorUtilities.BranchResult.Taken:
	    		return BranchPredictorUtilities.BranchResult.NotTaken
	    	else:
	    		return BranchPredictorUtilities.BranchResult.Taken


	class TwoBitCounter(Enum):

		StronglyNotTaken = 0
		WeaklyNotTaken = 1
		WeaklyTaken = 2
		StronglyTaken = 3

		@classmethod
		def increment(cls,state):
			if state == cls.StronglyNotTaken:
				return cls.WeaklyNotTaken
			elif state == cls.WeaklyNotTaken:
				return cls.WeaklyTaken
			elif state == cls.WeaklyTaken:
				return cls.StronglyTaken
			else: 
				return cls.StronglyTaken
		
		@classmethod
		def decrement(cls,state):
			if state == cls.WeaklyNotTaken:
				return cls.StronglyNotTaken
			elif state == cls.WeaklyTaken:
				return cls.WeaklyNotTaken
			elif state == cls.StronglyTaken:
				return cls.WeaklyTaken
			else:
				return cls.StronglyNotTaken

		@classmethod
		def shouldJump(cls,state):
			if state == cls.StronglyTaken or state == cls.WeaklyTaken:
				return True
			else:
				return False


class BranchPredictor(ABC):
	"""
	This is the base abstract class for all branch predictors. From the simulators
	perspective, all predictors need to be able to predict a result based 
	on a branch, and also update their internal state based off of the outcome of
	the branch. Everything else is fair game.  
	"""
	@abstractmethod
	def predictResult(self,branch_address,branch_targets):
		pass	
	@abstractmethod
	def updateBranchResult(self,branch_address,branch_targets,result, prediction):
		pass
	@abstractmethod
	def __str__(self):
		pass

class OneBitPredictor(BranchPredictor):
	"""
	One bit predictor that has one entry for each branch in a table of arbitrary
	size. Replacement policy is least recently used
	Default prediction on first encounter of branch is taken optional
	"""
	def __init__(self, table_size, default_behavior):
		self.table = {}
		self.entry_count = 0
		self.max_entry_count = table_size
		self.default_entry = default_behavior

	def __str__(self):
		return('OneBitPredictor')

	def print_state(self):
		pp = pprint.PrettyPrinter(indent = 4)
		pp.pprint(self.table)
		pp.pprint(self.max_entry_count)

	"""
	Increments LRU counters in branch table. Higher LRU numbers indicate staler 
	entries
	"""
	def incrementLRUcounters(self):
		for (address, (last_result,lru)) in self.table.items():
			self.table[address] = (last_result, lru+1)
	
	"""
	Attempts to insert branch entries in branch entry table. If there's no free
	slot, will fail and return false
	"""	
	def insertBranchEntry(self,branch_address,branch_targets):
		if self.entry_count < self.max_entry_count:
			self.table[branch_address] = (self.default_entry, 1)
			self.entry_count += 1
			return True
		else:
			return False

	"""
	Applies replacement policy by checking for entry with max LRU in the table
	Higher LRU numbers indicate staler results. 
	When it finds it it deletes and slots in a new entry with the new branch
	"""	
	def applyReplacementPolicy(self, branch_address, branch_targets):
		idx_of_tuple = 1
		idx_of_lru_counter = 1
		idx_of_branch_address = 0
		lru_indexer = lambda entry: entry[idx_of_tuple][idx_of_lru_counter]
		
		least_recently_used_address = max(
											self.table.items(), 
											key=lru_indexer
										)[idx_of_branch_address]
		del self.table[least_recently_used_address]

		self.table[branch_address] = (self.default_entry, 1)


	"""
	Attempts to predict the result based off of the last entry in the branch table
	Before it does that, it increments all LRU counters to indicate that all 
	entries are now a little bit staler than they were before. The one we're accessing 
	now will eventually be made less stale. However, since at this point we still need 
	to resolve the branch and update the entry in the table, we hold off on updating the
	lru counter until the outcome of the branch is resolved, so we can do one monolithic
	update to the entry all at once. 
	If no entry exists in the table, attempts to insert one. If there's no space
	it will apply the replacement policy which in this case is LRU.  
	"""
	def predictResult(self,branch_address,branch_targets):
		self.incrementLRUcounters()
		if branch_address in self.table.keys():
			(last_result,lru) = self.table[branch_address]
			return last_result
		else:
			success = self.insertBranchEntry(
					branch_address, 
					branch_targets, 
				)

			if not success: 
				self.applyReplacementPolicy(
					branch_address, 
					branch_targets, 
				)
			return self.default_entry
	
	"""
	Final step of the prediction cycle. Now the branch outcome is known, and if the
	prediction was correct, we do nothing to the entry, and if it's wrong we flip
	the entry. A sanity check is put in place here to make sure that we're accessing 
	a branch entry in the table that actually exists. It's at this point we update the
	LRU number to indicate that this entry is the least stale entry of all entries because
	it was just accessed due to a prediction and an update. 
	"""
	def updateBranchResult(self,branch_address,branch_targets,result, prediction):
		if branch_address not in self.table.keys():
			raise Exception('Updating branch result on a non existent  \
								branch In the Branch predictor table')
		else:
			last_result, lru_counter = self.table[branch_address]
			new_result = last_result
			lru_counter = 1
			if result == False:
				new_result = last_result.invert()
			self.table[branch_address] = (new_result,lru_counter)

class TwoBitPredictor(OneBitPredictor):
			
	"""
	A two bit predictor is basically a one bit predictor with different prediction
	logic and update logic. The management of the branch table itself remains the 
	same. Here the LRU policy remains intact and unchanged. Here the default entry
	is initialized. What the default entry is will be made clear in the predictResult
	Function of this class
	"""
	def __init__(self, table_size, default_behavior, default_entry):
		super(TwoBitPredictor, self).__init__(table_size, default_behavior)
		self.default_entry = default_entry

	def __str__(self):
		return('TwoBitPredictor')


	"""
	Same logic for result prediction inhereted from super class. You're doing the
	same thing as in OneBitPredictor.predictResult() with one major difference. 
	The entry you're putting in by default if no entry exists has changed. 
	Instead of putting in a Taken or NotTaken, now you're putting in a counter
	with a default value (ST, WT, WNT, SNT). From the perspective of the super
	it really doesn't matter what the default is, it'll put in the table regardless.
	The handling of the logic changes here though. That's why were doing an overload
	of function predictResult for the two bit counter. If an entry exists it'll be a
	counter that will have to be resolved into a taken or not taken. That is were 
	the helper function in the utility class BranchPredictorUtilities comes in. It
	resolves ST and WT to Taken and SNT and WNT to NotTaken.
	"""
	def predictResult(self,branch_address,branch_targets):
		prediction_result = super().predictResult(branch_address,branch_targets)
		if BranchPredictorUtilities.TwoBitCounter.shouldJump(prediction_result):
			return BranchPredictorUtilities.BranchResult.Taken
		else:
			return BranchPredictorUtilities.BranchResult.NotTaken

	"""
	Unfortuately the update logic changes dramatically from the super class.
	Since we're going to update the entry no matter what whether the prediction
	was true or false. If the prediction is True we strengthen the counter in the 
	direction that corresponds to it's trace. So if the outcome was Taken, we changes 
	the state as follows SNT->WNT->WT->ST, and if the outcome was not taken we change
	the state as follows ST->WT->WNT->SNT. We do the inverse if the prediction was 
	wrong (ie strengthet in the opposite direction). LRU counter is set to zero here
	to indicate that this entry is the freshest of all the other entries. 
	"""
	def updateBranchResult(self,branch_address,branch_targets,result, prediction):
		if branch_address not in self.table.keys():
			raise Exception('Updating branch result on a non existent  \
								branch In the Branch predictor table')
		else:
			last_result, lru_counter = self.table[branch_address]
			new_result = last_result
			lru_counter = 1
			if result == False:
				if prediction == BranchPredictorUtilities.BranchResult.Taken:
					new_result = BranchPredictorUtilities.TwoBitCounter.decrement(last_result)
				else:
					new_result = BranchPredictorUtilities.TwoBitCounter.increment(last_result)
			else:
				if prediction == BranchPredictorUtilities.BranchResult.Taken:
					new_result = BranchPredictorUtilities.TwoBitCounter.increment(last_result)
				else:
					new_result = BranchPredictorUtilities.TwoBitCounter.decrement(last_result)


			self.table[branch_address] = (new_result,lru_counter) 
		


class AlwaysTakenPredictor(BranchPredictor):
	"""This is a dummy predictor used for testing purposes only"""
	def __init__(self):
		pass
	def predictResult(self,branch_address,branch_targets):
		return BranchPredictorUtilities.BranchResult.Taken
	def updateBranchResult(self,branch_address,branch_targets,result, prediction):
		pass
	def __str__(self):
		return('AlwaysTakenPredictor')


class TwoLevelAdaptivePredictor(BranchPredictor):
	"""
	This is a two level adaptive predictor were each branch has an entry in the branch history
	table with several entries for the pattern of branch outcomes. There is a distinction here
	between default_behavior and default_pht_state. The default pht state is the default two bit
	counter value in the pattern history table for all entries. The number of entries in the pht
	are a power of two of the size of the bht history(number of bits). Replacement policy for
	the BHT is LRU, so a lot of the code will look similair to OneBitPredictor and TwoBitPredictor.
	"""
	def __init__(self, bht_table_size, bht_history_size, default_behavior, default_pht_state):

		self.branch_history_table = {}
		self.max_bht_entry_count = bht_history_size
		self.branch_table_max_size = bht_table_size
		self.default_bht_entry = [default_behavior] * self.max_bht_entry_count
		self.default_bht_behavior = default_behavior
		self.bht_entry_count = 0

		self.default_pht_entry = default_pht_state
		self.pattern_history_table = [self.default_pht_entry] * (2**bht_history_size)

	"""
	The same LRU counter increment logic for all entries in the BHT 
	"""
	def incrementBhtLRUcounters(self):
		for (address, (lru, last_result)) in self.branch_history_table.items():
			self.branch_history_table[address] = (lru+1, last_result)

	"""
	Converts the sequence of branch outcomes into an index into the PHT. Basically a
	binary conversion where T = 1 and NT = 0 
	"""
	def getPatternHistoryTabelIndex(self, pattern):
		pht_idx = 0
		
		for pattern_idx in range(0,len(pattern)):
			pht_idx += (2**pattern_idx)*pattern[pattern_idx].convertToInt()

		return pht_idx

	"""
	Converts index into Entry
	"""
	def getPatternHistoryTableEntry(self, pattern):
		return self.pattern_history_table[self.getPatternHistoryTabelIndex(pattern)]

	"""
	Same insertion logic seen before. The default BHT entry is added here 
	as an initialziation for that entry. It will be updated when the update
	of the predictor is called depending on the real outcome of the branch.
	However, you have to start somewhere and the default_bht_entry is the default
	pattern all branches start out with. This does mean that for that initially
	all branch entries alias into the same two bit counter, but that makes sense
	and follows the Two bit adaptive logic of branches with similair patterns
	aliasing into the same pht index.
	"""
	def insertBranchEntry(self,branch_address,branch_targets):
		if self.bht_entry_count < self.branch_table_max_size:
			
			lru_counter = 1
			
			self.branch_history_table[branch_address] = (
					lru_counter, 
					self.default_bht_entry
				)

			self.bht_entry_count += 1

			return True
		else:
			return False


	"""
	Same replacement policy as before
	"""
	def applyReplacementPolicy(self, branch_address, branch_targets):
		idx_of_tuple = 1
		idx_of_lru_counter = 0
		idx_of_branch_address = 0
		lru_indexer = lambda entry: entry[idx_of_tuple][idx_of_lru_counter]
		
		least_recently_used_address = max(
											self.branch_history_table.items(), 
											key=lru_indexer
										)[idx_of_branch_address]

		lru_counter = 1

		del self.branch_history_table[least_recently_used_address]

		self.branch_history_table[branch_address] = (
			lru_counter, 
			self.default_bht_entry
		)

	"""
	Same prediction logic as the twobitcounter except now you index into the 
	PHT to get the actual counter instead of just using the branch address as 
	the index
	"""
	def predictResult(self,branch_address,branch_targets):
		self.incrementBhtLRUcounters()
		if branch_address in self.branch_history_table.keys():
			(lru, pattern) = self.branch_history_table[branch_address]
			prediction = BranchPredictorUtilities.TwoBitCounter.shouldJump(
				self.getPatternHistoryTableEntry(pattern)
			)
			if prediction == True:
				return BranchPredictorUtilities.BranchResult.Taken
			else:
				return BranchPredictorUtilities.BranchResult.NotTaken
		else:
			success = self.insertBranchEntry(
					branch_address, 
					branch_targets, 
				)

			if not success: 
				self.applyReplacementPolicy(
					branch_address, 
					branch_targets, 
				)
			return self.default_bht_behavior 

	"""
	Same overall logic as twobitcounter except now you update the bht entry 
	by shifting all branch outcomes left and inserting the new outcome on the 
	right. But before you change the branch's pattern in the bht, you have 
	to update the counter state corresponding to that pattern because depending
	whether the counter predicted the right or wrong decision for that pattern
	you have to update the counter to reflect that. Updating the counter follows
	the same logic outlined in the TwoBitCounter updateBranchResult. The only difference
	is that after you update the twobitcounter corresponding to that BHT pattern entry
	you then update the pattern in the BHT. 
	"""
	def updateBranchResult(self,branch_address,branch_targets,result, prediction):
		if branch_address not in self.branch_history_table.keys():
			raise Exception('Updating branch result on a non existent  \
								branch In the Branch predictor table')
		else:
			lru_counter, last_bht_entry = self.branch_history_table[branch_address]
			lru_counter = 1
			pht_entry_idx = self.getPatternHistoryTabelIndex(last_bht_entry)
			last_pht_entry = self.getPatternHistoryTableEntry(last_bht_entry)
			new_bht_entry = last_bht_entry[1:self.max_bht_entry_count]
			new_pht_entry = last_pht_entry

			if result == False:
				if prediction == BranchPredictorUtilities.BranchResult.Taken:
					new_pht_entry = BranchPredictorUtilities.TwoBitCounter.decrement(
						last_pht_entry
					)
					new_bht_entry += [BranchPredictorUtilities.BranchResult.NotTaken]
				else:
					new_pht_entry = BranchPredictorUtilities.TwoBitCounter.increment(
						last_pht_entry
					)
					new_bht_entry += [BranchPredictorUtilities.BranchResult.Taken]

			else:
			
				new_bht_entry += [prediction]

				if prediction == BranchPredictorUtilities.BranchResult.Taken:
					new_pht_entry = BranchPredictorUtilities.TwoBitCounter.increment(
							last_pht_entry
						)
				else:
					new_pht_entry = BranchPredictorUtilities.TwoBitCounter.decrement(
							last_pht_entry
						)

			self.pattern_history_table[pht_entry_idx] = new_pht_entry

			self.branch_history_table[branch_address] = (lru_counter, new_bht_entry) 
		

	def __str__(self):
		return('TwoLevelAdaptivePredictor')

class PerceptronPredictor(BranchPredictor):
	
	"""
	This is basically a two level adaptive predictor with the two bit counter switched out
	for perceptrons. The logic for bht insertions and deletions remains the same. Honestly I
	should have just used inheritence and split the two bit adaptive predictor into a bht object
	and a pht object. This would have allowed me to construct a lot of other fun predictors but
	hey, a deadline is a deadline, you gotta stop sometime. Anyways... back to the init. Any perceptron
	is defined by it's weight which will be equal to the number of pattern entries for a branch in the bht
	plus one for bias weight. The default value of the weights can be defined here. The values of the weights
	indicate how correllated an entry in the bht history is to the predicted outcome of the branch. 
	Just like the pht, the number of perceptrons is equal to 2^(history bits).
	"""
	def __init__(
			self, 
			bht_table_size, 
			bht_history_size, 
			default_behavior, 
			default_perceptron_weight,
			learning_threshold
		):

		self.branch_history_table = {}
		self.max_bht_entry_count = bht_history_size
		self.branch_table_max_size = bht_table_size
		self.default_bht_entry = [default_behavior] * self.max_bht_entry_count
		self.default_bht_behavior = default_behavior
		self.bht_entry_count = 0

		self.default_perceptron_weights = [default_perceptron_weight] * (bht_history_size+1)
		self.perceptron_table = [self.default_perceptron_weights] * (2**bht_history_size)
		self.learning_threshold = learning_threshold

	"""
	Same as two level adpative
	"""
	def incrementBhtLRUcounters(self):
		for (address, (lru, last_result)) in self.branch_history_table.items():
			self.branch_history_table[address] = (lru+1, last_result)

	"""
	Helper function to calculate output of a perceptron
	Basically a dot product of two vectors
	"""
	def perceptronDot(self, inputs, weights):
		return sum([p_input*p_weight 
				for (p_input, p_weight) in zip(inputs, weights)
			])

	"""
	Helper function to convert the pattern entry (T, T, NT etc...) into inputs for the
	perceptron. Adds an extra one to the pattern because of the bias weight.
	"""
	def convertPatternToInputs(self, pattern):
		return [1] + [1 if entry.convertToInt() == 1 else -1 for entry in pattern]

	"""
	Implements training function outlined in perceptron paper. Change weights based on how
	correlated a particular entry in the pattern is to the output. This is a faithful implementation
	with no modifications. 
	"""
	def perceptronTrain(self, pattern, expected_prediction):
		
		perceptron_weights = self.getPerceptronWeights(pattern)

		perceptron_inputs = self.convertPatternToInputs(pattern)

		sign = lambda x: -1*(x<0)+1*(x>0)
		t = 1 if expected_prediction.convertToInt() == 1 else -1
		y_out =  self.perceptronDot(perceptron_inputs, perceptron_weights)

		while sign(y_out) != t or abs(y_out) <= self.learning_threshold:
			perceptron_weights = [w + t*x for (w,x) in zip(perceptron_weights,perceptron_inputs)]
			y_out =  self.perceptronDot(perceptron_inputs, perceptron_weights)


		perceptron_idx = self.getPerceptronIndex(pattern)
		self.perceptron_table[perceptron_idx] = perceptron_weights

	"""
	Calcualtes the output of a perceptron by getting the weights corresponding and converting
	the pattern to a numerical representation. Then it applies a dot product. The activation of 
	the perceptron is a step function. If output is greater than one then the branch is taken,
	if not the branch is not taken. 
	"""
	def perceptronPredict(self, pattern):
		
		perceptron_weights = self.getPerceptronWeights(pattern)
		perceptron_inputs = self.convertPatternToInputs(pattern)

		y_out = self.perceptronDot(perceptron_inputs, perceptron_weights)
		if y_out>0:
			return BranchPredictorUtilities.BranchResult.Taken
		else:
			return BranchPredictorUtilities.BranchResult.NotTaken


	"""
	Converts pattern into index to get the perceptron from the perceptron table
	"""
	def getPerceptronIndex(self, pattern):
		perceptron_idx = 0
		
		for pattern_idx in range(0,len(pattern)):
			perceptron_idx += (2**pattern_idx)*pattern[pattern_idx].convertToInt()

		return perceptron_idx

	"""
	Get's the perceptron (ie the weights of the perceptron) corresponding to the bht 
	pattern entry
	"""
	def getPerceptronWeights(self, pattern):
		return self.perceptron_table[self.getPerceptronIndex(pattern)]

	"""
	Same as two level adpative predictor
	"""
	def insertBranchEntry(self,branch_address,branch_targets):
		if self.bht_entry_count < self.branch_table_max_size:
			
			lru_counter = 1
			
			self.branch_history_table[branch_address] = (
					lru_counter, 
					self.default_bht_entry
				)

			self.bht_entry_count += 1

			return True
		else:
			return False

	"""
	Same as two level adpative predictor
	"""
	def applyReplacementPolicy(self, branch_address, branch_targets):
		idx_of_tuple = 1
		idx_of_lru_counter = 0
		idx_of_branch_address = 0
		lru_indexer = lambda entry: entry[idx_of_tuple][idx_of_lru_counter]
		
		least_recently_used_address = max(
											self.branch_history_table.items(), 
											key=lru_indexer
										)[idx_of_branch_address]

		lru_counter = 1

		del self.branch_history_table[least_recently_used_address]

		self.branch_history_table[branch_address] = (
			lru_counter, 
			self.default_bht_entry
		)

	"""
	Same as two level adaptive predictor except instead of evaluating the output of the two bit counter 
	you index into the right perceptron and evaluate the output of the perceptron based on the input pattern 
	and the weights of the perceptron. 
	"""
	def predictResult(self,branch_address,branch_targets):
		self.incrementBhtLRUcounters()
		if branch_address in self.branch_history_table.keys():
			(lru, pattern) = self.branch_history_table[branch_address]
			return self.perceptronPredict(pattern)
		else:
			success = self.insertBranchEntry(
					branch_address, 
					branch_targets, 
				)

			if not success: 
				self.applyReplacementPolicy(
					branch_address, 
					branch_targets, 
				)
			return self.default_bht_behavior 

	"""
	Same as two level adaptive predictor except now instead of updating the two bit counter, you train
	the perceptron based on the true outcome of the branch 
	"""
	def updateBranchResult(self,branch_address,branch_targets,result, prediction):
		if branch_address not in self.branch_history_table.keys():
			raise Exception('Updating branch result on a non existent  \
								branch In the Branch predictor table')
		else:
			lru_counter, last_bht_entry = self.branch_history_table[branch_address]
			lru_counter = 1
			new_bht_entry = last_bht_entry[1:self.max_bht_entry_count]
			expected_prediction = prediction

			if result == False:
				if prediction == BranchPredictorUtilities.BranchResult.Taken:
					new_bht_entry += [BranchPredictorUtilities.BranchResult.NotTaken]
					expected_prediction = BranchPredictorUtilities.BranchResult.NotTaken
				else:
					new_bht_entry += [BranchPredictorUtilities.BranchResult.Taken]
					expected_prediction = BranchPredictorUtilities.BranchResult.Taken
			else:
				new_bht_entry += [prediction]

			self.perceptronTrain(
				pattern  = last_bht_entry,
				expected_prediction = expected_prediction
			)

			self.branch_history_table[branch_address] = (lru_counter, new_bht_entry) 
		

	def __str__(self):
		return('PerceptronPredictor')

class MajroityVoterPredictor(BranchPredictor):
	"""
	This is the majority predictor, it basically takes an arbitrary number of predictors
	and calls their respective prediction functions. Generally the number of predictors 
	should be odd to allow for a clear majority but if you have an even number of predictors
	the MajorityVoter will lean towards taking the branch if the outcome between the predictors
	is split half and half. After all predictors have given their answers, the update function
	is called to allow each predictor to update it's state depending on the outcome of the branch 	
	"""
	def __init__(
			self, *predictors
		):
		self.predictors = predictors

	def predictResult(self,branch_address,branch_targets):
		predictions = []
		for predictor in self.predictors:
			predictions.append(predictor.predictResult(branch_address,branch_targets))
		
		branch_taken_votes = predictions.count(
											BranchPredictorUtilities.BranchResult.Taken
										)
		branch_Not_taken_votes = predictions.count(
											BranchPredictorUtilities.BranchResult.NotTaken
										)
		if branch_taken_votes >= branch_Not_taken_votes:
			return BranchPredictorUtilities.BranchResult.Taken
		else:
			return BranchPredictorUtilities.BranchResult.NotTaken

	def updateBranchResult(self,branch_address,branch_targets, result, prediction):
		for predictor in self.predictors:
			predictor.updateBranchResult(branch_address,branch_targets, result, prediction)
				

	def __str__(self):
		predictor_list = '\n'.join([str(predictor) for predictor in list(self.predictors)])
		return "MajroityVoterPredictor with predictors: \n%s" % (predictor_list)

class Simulator():
	"""This is the simulator object"""
	def __init__(self):
		self.trace_graph = nx.DiGraph()
		self.x86_max_inst_size = 15
		self.final_address_in_trace = 0
		self.jump_table = {}
		self.bar =''
		self.file_size = 0
		self.trace_file = ''

	def cleanAddress(self, address):
		return int(address.strip(),16)

	"""Displays the directed graph that represents the loaded trace"""
	def showTraceGraph(self):
		nx.draw_shell(self.trace_graph, with_labels=True, font_weight='bold')
		plt.show()

	"""Loads serialized graph from file (useful to avoid rebuilding huge traces"""
	def loadGraphFromFile(self,graph_file):
		print('Loading graph from %s' % (graph_file))
		self.trace_graph = nx.read_gpickle('%s.graph' % (graph_file))
		with open('%s.meta_graph' % (graph_file),'r') as save_file:
			meta_data = json.load(save_file)
			# print(meta_data)
			self.final_address_in_trace = meta_data['final_address']
			self.trace_file = meta_data['trace_file']
			self.jump_table = meta_data['jump_table']
			self.jump_table = {int(k):(v) for (k,v) in self.jump_table.items()}
			self.file_size = meta_data['file_size']

	"""Saves serialized graph from file (useful to avoid rebuilding huge traces"""
	def saveGraphToFile(self,graph_file):
		print('Saving Graph to %s.graph.....' % (graph_file))		
		nx.write_gpickle(self.trace_graph, '%s.graph' % (graph_file))
		print('Saving Graph metadata to %s.meta_graph.....' % (graph_file))	
		with open('%s.meta_graph' % (graph_file),'w') as save_file:
			json.dump({
					'final_address'	: self.final_address_in_trace, 
					'trace_file'	: self.trace_file,
					'file_size'		: self.file_size,
					'jump_table'	: self.jump_table
				},save_file)

	"""Builds graph from a file"""
	def buildGraphFromTrace(self,trace_file):
		self.trace_file = trace_file
		print('Building Graph.....')		
		progress = self.addNodes()
		self.addEdges(progress)
		self.refineGraph()
		self.findAllJumps()

	"""
	Add all addresses in the trace file as nodes in the graph
	Duplicate addresses in the trace are NOT added twice to the graph
	"""
	def addNodes(self):
		self.file_size = sum(1 for line in open(self.trace_file))
		self.bar = progressbar.ProgressBar(max_value=self.file_size*2)
		line_number = 0
		with open(self.trace_file, 'r') as trace:
			for next_address in trace:
				if next_address != '#eof\n':
					self.trace_graph.add_node(self.cleanAddress(next_address))			
				if (line_number%(10**6)==0 and line_number !=0):
					self.bar.update(line_number)
				line_number = line_number + 1
		return line_number

	"""
	Connect all addresses the follow each other sequentially in the file
	Since all nodes have been placed in the graph, all connections regardless
	of distance will be made	
	"""
	def addEdges(self, line_number):
		with open(self.trace_file, 'r') as trace:
			last_address = -1
			for next_address in trace:
				if next_address != '#eof\n':
					next_address = self.cleanAddress(next_address)
					self.trace_graph.add_edge(last_address,next_address)
					last_address = next_address
				else:
					self.final_address_in_trace = last_address				
				if (line_number%(10**6)==0 and line_number!=0):
					self.bar.update(line_number)
				line_number = line_number + 1
			self.trace_graph.remove_node(-1)

	"""
	Creates connections that are not explicit in the trace file but must 
	exist logically in the binary file. Let's say you have the following trace:
	1 7 9 5 6 7 12

	The graph produced would look something like this 
	(numbers above arrows indicate order of trace)

	               1                          6
	  +----------------------------+ +------------------+
	  |                            | |                  |
	  |                            v |                  v
	+-+-+     +---+     +---+     ++-++     +---+     +-+--+
	|   |     |   |  4  |   |  5  |   |  2  |   |     |    |
	| 1 |     | 5 +---->+ 6 +---->+ 7 +---->+ 9 |     | 12 |
	|   |     |   |     |   |     |   |     |   |     |    |
	+---+     +-+-+     +---+     +---+     +-+-+     +----+
	            ^                             |
	            |              3              |
	            +-----------------------------+

	Unfortunately, with the graph as is, you wouldn't be able to see
	that 1 and 9 are actual branches because they only go to one node
	and nor would you see 1 as a jump because it jumps only 6 bytes ahead
	and not >=15. (You would see 9 as a jump because it jumps backwards though) 
	That's were refinement comes in. Even though the not taken branch (1 to 5) 
	never actually happens, logically in the binary, instruction at address 5 
	must come after instruction at address 1
	The same thing with 9 and 12. Refinement basically connects all instructions
	That follow one another sequentially in the code regardless of the distance 
	between them because they must preceed eachother in the binary if there 
	are no intermediate nodes. After refinement the above graph changes to:


		               1                          6
	  +----------------------------+ +------------------+
	  |                            | |                  |
	  |                            v |                  v
	+-+-+     +---+     +---+     ++-++     +---+     +-+-+
	|   |     |   |  4  |   |  5  |   |  2  |   |     |   |
	| 1 +---->+ 5 +---->+ 6 +---->+ 7 +---->+ 9 +---->+ 1 |
	|   |     |   |     |   |     |   |     |   |     |   |
	+---+     +-+-+     +---+     +---+     +-+-+     +---+
	            ^                             |
	            |              3              |
	            +-----------------------------+

	It becomes clear now that 1 is a branch and it stops being hidden due to
	it's target and lack of edge between it and the successive node 5.

	"""
	def refineGraph(self):
		sorted_nodes = sorted(list(self.trace_graph.nodes))
		last_node = sorted_nodes[0]
		for next_node in sorted_nodes[1:]:
			last_node_neighbors = list(self.trace_graph.adj[last_node])
			if next_node not in last_node_neighbors:
				self.trace_graph.add_edge(last_node,next_node)
			last_node = next_node

	"""
	Finds all jumps in the graph based on three rules and puts them in the simulator
	jump table

	1)	If a node has one neighbor with an address greater than the max of an
		x86 instruction, or an address lower than the node address then it's a jump
		Short range forward jumps (Less than the max of an x86 instruction) will only 
		be detected if addresses in between jump instruction address and jump target 
		are vistited at any point in the code (See refine graph example). 
		(Disclaimer: 
		IF that does happen, they will be detected as branches that were always taken)
		If that doesn't happen, they cannot be detected and will be treated like a 
		regular instruction

	2) 	If a node has two neighbors it can be a branch or a return
		from a function called from two different places. 
		To distinguish between those two cases check to see if any one of the targets
		is within range of one x86 instruction. If that is the case it is a branch
		If not It has to be a return. 
	
		Disclaimer: if a return jumps to an address that is within an x86_instruction
		it will be considered a branch, however, this is unavoidable. That'll happen in a 
		scenario like this

		J DoCall
		func:
			//do stuff
			return
		DoCall:
			Call func
			// more stuff

		If node is resolved to a branch, the target must be determined by
			1)	sort all targets
			2)	if smaller target is smaller than node address (ie a backwards jump)
				it must be the target of the branch, so swap with larger
			3)	if not smaller do nothing (because larger instruction has to be the target and smaller
											has to be the instruction right after the branch)
		After the above steps, second target will be the branch target

	3)	If a node has more than three neighbors it must be a return

	These rules result in the following logical equalities
	low range branches that are only taken = unconditional low range jumps
	low range jumps with no visit of intermediates between target and jump = regular 
	instructions
	Branches thar are never taken = regualar instructions
	Calls = branches even if they are never not taken
	"""
	def findAllJumps(self):	
		for node in self.trace_graph.nodes:
			node_neighbors = list(self.trace_graph.adj[node])
			num_node_neighbors = len(node_neighbors)
			if node != self.final_address_in_trace:
				if num_node_neighbors == 0:
					raise Exception("Found a lonely address, \
										all nodes need friends!")
				if num_node_neighbors == 1:
					distance = node_neighbors[0] - node
					if distance < 0 or abs(distance) > self.x86_max_inst_size: 
						self.jump_table[node] = ('j',node_neighbors)

				if num_node_neighbors == 2:
					self.jump_table[node] = node_neighbors
					within_reach = [(abs(target-node)) <= self.x86_max_inst_size 
										for target in node_neighbors]
					if within_reach.count(True) > 0:
						targets = sorted(node_neighbors)
						if(targets[0] < node):
							targets[0], targets[1] = targets[1], targets[0]
						self.jump_table[node] = ('b', targets)
					else:
						self.jump_table[node] = ('r', node_neighbors)

				if num_node_neighbors > 2:
					self.jump_table[node] = ('r', node_neighbors)

	"""
	Evaluates the result of the prediction for the current instruction in the trace. 
	If the type of the instruction was a return or a jump then a jump has to occur 
	regardless of the target of the jump. In that case, we only test the prediction 
	to see if it was Taken. Otherwise of if the instruction was a jump we evaluate 
	the next address in the trace, if it's equal to the second index of the target
	list, then the branch prediction was a success. The second index has to be the
	jump target for reasons listed in the function findAllJumps.
	"""
	def evaluatePrediction(self, jump_type, targets, next_address, prediction):
		prediction_result = False
		if(jump_type in ['r', 'j']):
			if(prediction == BranchPredictorUtilities.BranchResult.Taken):
				prediction_result = True

		elif(jump_type == 'b'):
			if(next_address == (targets[1]) 
				and prediction == BranchPredictorUtilities.BranchResult.Taken):
				prediction_result = True
			
			elif(next_address == (targets[0]) 
					and prediction == BranchPredictorUtilities.BranchResult.NotTaken):
				prediction_result = True
		return prediction_result


	"""
	The big one. This is the core of the simulation. The flow is generally simple.
	Start going through the trace file. Pick up two addresses at time. For each address
	check if it's in the jump table, if it is then run the predictor on it. Get the
	result of the prediction and validate if the outcome of the result. Then after
	evaluating the outcome apply the predictors update logic on the validation to change
	it's state to conform to the outcome of the branch. 
	"""
	def runSim(self,predictor):
		total_jumps = 0
		total_correct_predictions = 0
		total_unconditional_hits = 0
		total_conditional_hits = 0
		print('\nRunning simulation with predictor %s' % predictor)
		with open(self.trace_file, 'r') as trace:
			self.bar = progressbar.ProgressBar(max_value=self.file_size)
			line_number = 0
			current_address = -1
			for address in trace:
				
				if address == '#eof\n':
					break

				next_address = self.cleanAddress(address)
				
				if current_address in self.jump_table.keys() and line_number > 0:
					
					# pdb.set_trace()

					self.bar.update(line_number)
					
					jump_type, targets = self.jump_table[current_address]
					
					total_jumps += 1

					prediction = predictor.predictResult(current_address, targets)
						
					prediction_result = self.evaluatePrediction(
												jump_type, 
												targets, 
												next_address, 
												prediction
											)
					
					if prediction_result == True:
						total_correct_predictions += 1

					predictor.updateBranchResult(
								current_address, 
								targets, 
								prediction_result,
								prediction
							)

				line_number = line_number + 1
				current_address = next_address
		
		print('\nHit rate for predictor: %s\n is %.5f.\n Total branches encountered: %d\n\
			Total correct predictions: %d\n' 
			% (predictor, total_correct_predictions/total_jumps, total_jumps,total_correct_predictions))




def main():
	pp = pprint.PrettyPrinter(indent = 4)
	sim = Simulator()
	sim.loadGraphFromFile('../trace/itrace')

	OneBit = OneBitPredictor(
				table_size = 32,
				default_behavior = BranchPredictorUtilities.BranchResult.Taken
			)
	
	TwoBit = TwoBitPredictor(
				table_size = 8, 
				default_behavior = BranchPredictorUtilities.BranchResult.Taken,
				default_entry = BranchPredictorUtilities.TwoBitCounter.WeaklyTaken
			)

	TwoLevel = TwoLevelAdaptivePredictor(
			bht_table_size = 8, 
			bht_history_size = 5,
			default_behavior = BranchPredictorUtilities.BranchResult.Taken,
			default_pht_state = BranchPredictorUtilities.TwoBitCounter.WeaklyTaken
		)
	
	Perceptron = PerceptronPredictor(
			bht_table_size = 8, 
			bht_history_size = 5, 
			default_behavior = BranchPredictorUtilities.BranchResult.Taken, 
			default_perceptron_weight = 1,
			learning_threshold = 3
		)

	majority_predictor = MajroityVoterPredictor(TwoBit, TwoLevel, Perceptron)

	sim.runSim(majority_predictor)

	sim.saveGraphToFile('../trace/itrace')

if __name__ == '__main__':
	main()









