#!/bin/python
import progressbar
import networkx as nx
import matplotlib.pyplot as plt
import pdb
import pprint
import json
from abc import ABC, abstractmethod
from enum import Enum
# from pudb import set_trace; set_trace()

class BranchPredictorUtilities():

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
	"""This is the base class for all branch predictors"""
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
	One bit per branch entry for table of size 32
	Replacement policy is least recently used
	Default prediction on first encounter of branch is taken
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

	def incrementLRUcounters(self):
		for (address, (last_result,lru)) in self.table.items():
			self.table[address] = (last_result, lru+1)
	
	def insertBranchEntry(self,branch_address,branch_targets):
		if self.entry_count < self.max_entry_count:
			self.table[branch_address] = (self.default_entry, 1)
			self.entry_count += 1
			return True
		else:
			return False

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

	def predictResult(self,branch_address,branch_targets):
		# pdb.set_trace()
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
			
	"""docstring for TwoBitPredictor"""
	def __init__(self, table_size, default_behavior, default_entry):
		super(TwoBitPredictor, self).__init__(table_size, default_behavior)
		self.default_entry = default_entry

	def __str__(self):
		return('TwoBitPredictor')

	def predictResult(self,branch_address,branch_targets):
		prediction_result = super().predictResult(branch_address,branch_targets)
		if BranchPredictorUtilities.TwoBitCounter.shouldJump(prediction_result):
			return BranchPredictorUtilities.BranchResult.Taken
		else:
			return BranchPredictorUtilities.BranchResult.NotTaken

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
	def __init__(self, bht_table_size, bht_history_size, default_behavior, default_pht_state):

		self.branch_history_table = {}
		self.max_bht_entry_count = bht_history_size
		self.branch_table_max_size = bht_table_size
		self.default_bht_entry = [default_behavior] * self.max_bht_entry_count
		self.default_bht_behavior = default_behavior
		self.bht_entry_count = 0

		self.default_pht_entry = default_pht_state
		self.pattern_history_table = [self.default_pht_entry] * (2**bht_history_size)

	def incrementBhtLRUcounters(self):
		for (address, (lru, last_result)) in self.branch_history_table.items():
			self.branch_history_table[address] = (lru+1, last_result)

	def getPatternHistoryTabelIndex(self, pattern):
		pht_idx = 0
		
		for pattern_idx in range(0,len(pattern)):
			pht_idx += (2**pattern_idx)*pattern[pattern_idx].convertToInt()

		return pht_idx

	def getPatternHistoryTableEntry(self, pattern):
		return self.pattern_history_table[self.getPatternHistoryTabelIndex(pattern)]

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

	def incrementBhtLRUcounters(self):
		for (address, (lru, last_result)) in self.branch_history_table.items():
			self.branch_history_table[address] = (lru+1, last_result)

	def perceptronDot(self, inputs, weights):
		return sum([p_input*p_weight 
				for (p_input, p_weight) in zip(inputs, weights)
			])

	def convertPatternToInputs(self, pattern):
		return [1] + [1 if entry.convertToInt() == 1 else -1 for entry in pattern]

	def perceptronTrain(self, pattern, expected_prediction):
		
		perceptron_weights = self.getPerceptronWeights(pattern)

		perceptron_inputs = self.convertPatternToInputs(pattern)

		sign = lambda x: -1*(x<0)+1*(x>0)
		t = 1 if expected_prediction.convertToInt() == 1 else -1
		y_out =  self.perceptronDot(perceptron_inputs, perceptron_weights)

		while sign(y_out) != t or abs(y_out) <= self.learning_threshold:
			perceptron_weights = [w + t*x 
									for (w,x) in zip(perceptron_weights,perceptron_inputs)]
			y_out =  self.perceptronDot(perceptron_inputs, perceptron_weights)


		perceptron_idx = self.getPerceptronIndex(pattern)
		self.perceptron_table[perceptron_idx] = perceptron_weights


	def perceptronPredict(self, pattern):
		
		perceptron_weights = self.getPerceptronWeights(pattern)
		perceptron_inputs = self.convertPatternToInputs(pattern)

		y_out = self.perceptronDot(perceptron_inputs, perceptron_weights)
		if y_out>0:
			return BranchPredictorUtilities.BranchResult.Taken
		else:
			return BranchPredictorUtilities.BranchResult.NotTaken


	def getPerceptronIndex(self, pattern):
		perceptron_idx = 0
		
		for pattern_idx in range(0,len(pattern)):
			perceptron_idx += (2**pattern_idx)*pattern[pattern_idx].convertToInt()

		return perceptron_idx

	def getPerceptronWeights(self, pattern):
		return self.perceptron_table[self.getPerceptronIndex(pattern)]

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
		return('TwoLevelAdaptivePredictor')

class MajroityVoterPredictor(BranchPredictor):
	"""This is the base class for all branch predictors"""
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
	exist logically in the binary file
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
	Finds all jumps in the graph based on three rules

	1)	If a node has one neighbor with an address greater than the max of an
		x86 instruction, or an address lower than the node address then it's a jump
		Short range forward jumps (Less than the max of an x86 instruction) will only 
		be detected if addresses in between jump instruction address and jump target 
		are vistited at any point in the code. If that doesn't happen, they cannot be 
		detected and will be treated like a regular instruction
		(Disclaimer: they will be detected as lwo range branches that were always taken)

	2) 	If a node has two neighbors it can be a branch or a return
		from a function called from two different places. 
		To distinguish between those two cases check to see if any one of the targets
		is within range of one x86 instruction. If that is the case it is a branch
		If not It has to be a return. 
	
		Disclaimer: if a return jumps to an address that is within an x86_instruction
		it will be considered a branch, however, this is unavoidable

		If node is resolved to a branch, the target must be determined by
			1)	sort all targets
			2)	if smaller target is smaller than node address
				it must be the target of the branch, so swap with larger
			3)	if not smaller do nothing
		After the above steps, second target will be the branch target

	3)	If a node has more than three neighbors it must be a return

	These rules result in the following logical equalities
	low range branches that are only taken = unconditional low range jumps
	low range jumps with no visit of intermediates between target and jump = regular 
	instructions
	Branches thar are never taken = regualar instructions
	Calls will be considered branches even if never not taken
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
		
		print('\nHit rate for predictor: %s is %.5f. Total branches encountered: %d\
			Total correct predictions: %d' 
			% (predictor, total_correct_predictions/total_jumps, total_jumps,total_correct_predictions))




def main():
	pp = pprint.PrettyPrinter(indent = 4)
	sim = Simulator()
	sim.loadGraphFromFile('../trace/itrace')

	# pdb.set_trace()

	# predictor = AlwaysTakenPredictor()
	
	TwoBit = TwoBitPredictor(
				table_size = 16, 
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
			bht_history_size = 10, 
			default_behavior = BranchPredictorUtilities.BranchResult.Taken, 
			default_perceptron_weight = 1,
			learning_threshold = 3
		)

	majority_predictor = MajroityVoterPredictor(TwoBit, TwoLevel, Perceptron)

	sim.runSim(majority_predictor)
	# predictor.print_state()
	# sim.showTraceGraph()
	# pp.pprint(sim.jump_table)
	sim.saveGraphToFile('../trace/itrace')

if __name__ == '__main__':
	main()









