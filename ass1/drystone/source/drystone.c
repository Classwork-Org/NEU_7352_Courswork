/*
 *     "DHRYSTONE" Benchmark Program
 *
 *     Version:        C/1
 *     Date:           12/01/84, RESULTS updated 10/22/85
 *     Author:         Reinhold P. Weicker,  CACM Vol 27, No 10, 10/84 pg. 1013
 *                     Translated from ADA by Rick Richardson
 *                     Every method to preserve ADA-likeness has been used,
 *                     at the expense of C-ness.
 *     Compile:        cc -O dry.c -o drynr                    : No registers
 *                     cc -O -DREG=register dry.c -o dryr      : Registers
 *     Defines:        Defines are provided for old C compiler's
 *                     which don't have enums, and can't assign structures.
 *                     The time(2) function is library dependant; One is
 *                     provided for CI-C86.  Your compiler may be different.
 *                     The LOOPS define is initially set for 50000 loops.
 *                     If you have a machine with large integers and is
 *                     very fast, please change this number to 500000 to
 *                     get better accuracy.  Please select the way to
 *                     measure the execution time using the TIME define.
 *                     For single user machines, time(2) is adequate. For
 *                     multi-user machines where you cannot get single-user
 *                     access, use the times(2) function.  If you have
 *                     neither, use a stopwatch in the dead of night.
 *                     Use a "printf" at the point marked "start timer"
 *                     to begin your timings. DO NOT use the UNIX "time(1)"
 *                     command, as this will measure the total time to
 *                     run this program, which will (erroneously) include
 *                     the time to malloc(3) storage and to compute the
 *                     time it takes to do nothing.
 *     Run:            drynr; dryr
 *
 *     Results:        If you get any new machine/OS results, please send to:
 *                     {ihnp4,vax135,..}!houxm!vaximile!rer
 *                     and thanks to all that do.  Space prevents listing
 *                     the names of those who have provided some of these
 *                     results.
 *     Note:           I order the list in increasing performance of the
 *                     "with registers" benchmark.  If the compiler doesn't
 *                     provide register variables, then the benchmark
 *                     is the same for both REG and NOREG.  I'm not going
 *                     to list a compiler in a better place because if it
 *                     had register variables it might do better. No
 *                     register variables is a big loss in my book.
 *     PLEASE:         Send complete information about the machine type,
 *                     clock speed, OS and C manufacturer/version.  If
 *                     the machine is modified, tell me what was done.
 *                     Otherwise, I won't include it in this list.  My
 *                     favorite flame on this subject was a machine that
 *                     was listed as an IBM PC/XT 8086-9.54Mhz.  That must
 *                     have been some kind of co-processor board that ran
 *                     the benchmark, not the XT.  Tell me what it was!
 *
 */
 
/* Accuracy of timings and human fatigue controlled by next two lines */
/* #define LOOPS  50000           /* Use this for slow or 16 bit machines  */
 #define LOOPS        50000000        /* Use this for faster machines */

 
/* Compiler dependent options */
#undef NOENUM                  /* Define if compiler has no enum's */
#undef NOSTRUCTASSIGN          /* Define if compiler can't assign structures */
/* define only one of the next three defines */
/* #define NOTIME               /* Define if no time() function in librar  y */
#define TIMES                  /* Use times(2) time function */
//#define TIME                 /* Use time(2) time function */
 
/* define the granularity of your times(2) function (when used) */
#define HZ     60              /* times(2) returns 1/60 second (most) */
/*#define HZ   100             /* times(2) returns 1/100 second (WECo) */
 
 
 
#ifdef NOSTRUCTASSIGN
#define        structassign(d, s)      memcpy(&(d), &(s), sizeof(d))
#else
#define        structassign(d, s)      d = s
#endif
 
#ifdef NOENUM
#define        Ident1  1
#define        Ident2  2
#define        Ident3  3
#define        Ident4  4
#define        Ident5  5
typedef int    Enumeration;
#else
typedef enum   {Ident1, Ident2, Ident3, Ident4, Ident5} Enumeration;
#endif
 
typedef int    OneToThirty;
typedef int    OneToFifty;
typedef char   CapitalLetter;
typedef char   String30[31];
typedef int    Array1Dim[51];
typedef int    Array2Dim[51][51];
 
struct Record
{
       struct Record           *PtrComp;
       Enumeration             Discr;
       Enumeration             EnumComp;
       OneToFifty              IntComp;
       String30                StringComp;
};
 
typedef struct Record  RecordType;
typedef RecordType *   RecordPtr;
typedef int            boolean;
 
#define        NULL            0
#define        TRUE            1
#define        FALSE           0
 
#ifndef REG
#define        REG
#endif
 
extern Enumeration     Func1();
extern boolean         Func2();
 
#ifdef TIMES
#include <sys/types.h>
#include <sys/times.h>
#endif

#include <stdlib.h>
#include <stdio.h>
 
main(int argc, char *argv[])
{
      // TODO: (1) Change the loop counter here by passing it as arg from argv (must cast string to long)
      // LOOPS = atoi(argv[1]);
      Proc0();
}
 
/*
 * Package 1
 */
int            IntGlob;
boolean                BoolGlob;
char           Char1Glob;
char           Char2Glob;
Array1Dim      Array1Glob;
Array2Dim      Array2Glob;
RecordPtr      PtrGlb;
RecordPtr      PtrGlbNext;
 
Proc0()
{
       OneToFifty              IntLoc1;
       REG OneToFifty          IntLoc2;
       OneToFifty              IntLoc3;
       REG char                CharLoc;
       REG char                CharIndex;
       Enumeration             EnumLoc;
       String30                String1Loc;
       String30                String2Loc;
       register unsigned int   i;
 
#ifdef TIME
       long                    time();
       long                    starttime;
       long                    benchtime;
       long                    nulltime;
       starttime = time(0);
       for (i = 0; i < LOOPS; ++i);
       nulltime = time(0) - starttime; /* Computes overhead of looping */
#endif
#ifdef TIMES
       time_t                  starttime;
       time_t                  benchtime;
       time_t                  nulltime;
       struct tms              tms;
       times(&tms); starttime = tms.tms_utime;
       for (i = 0; i < LOOPS; ++i);
       times(&tms);
       nulltime = tms.tms_utime - starttime; /* Computes overhead of looping */
#endif
 
       PtrGlbNext = (RecordPtr) malloc(sizeof(RecordType));
       PtrGlb = (RecordPtr) malloc(sizeof(RecordType));
       PtrGlb->PtrComp = PtrGlbNext;
       PtrGlb->Discr = Ident1;
       PtrGlb->EnumComp = Ident3;
       PtrGlb->IntComp = 40;
       strcpy(PtrGlb->StringComp, "DHRYSTONE PROGRAM, SOME STRING");
 
/*****************
-- Start Timer --
*****************/
#ifdef TIME
       starttime = time(0);
#endif
#ifdef TIMES
       times(&tms); starttime = tms.tms_utime;
#endif
for (i = 0; i < LOOPS; ++i)
{
 
       Proc5();
       Proc4();
       IntLoc1 = 2;
       IntLoc2 = 3;
       strcpy(String2Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
       EnumLoc = Ident2;
       BoolGlob = ! Func2(String1Loc, String2Loc);
       while (IntLoc1 < IntLoc2)
       {
               IntLoc3 = 5 * IntLoc1 - IntLoc2;
               Proc7(IntLoc1, IntLoc2, &IntLoc3);
               ++IntLoc1;
       }
       Proc8(Array1Glob, Array2Glob, IntLoc1, IntLoc3);
       Proc1(PtrGlb);
       for (CharIndex = 'A'; CharIndex <= Char2Glob; ++CharIndex)
               if (EnumLoc == Func1(CharIndex, 'C'))
                       Proc6(Ident1, &EnumLoc);
       IntLoc3 = IntLoc2 * IntLoc1;
       IntLoc2 = IntLoc3 / IntLoc1;
       IntLoc2 = 7 * (IntLoc3 - IntLoc2) - IntLoc1;
       Proc2(&IntLoc1);
 
/*****************
-- Stop Timer --
*****************/
}
#ifdef TIME
benchtime = time(0) - starttime - nulltime;
printf("Dhrystone time for %ld passes = %ld\n", (long) LOOPS, benchtime);
printf("This machine benchmarks at %ld dhrystones/second\n",
       ((long) LOOPS) / benchtime);
#endif
#ifdef TIMES
       times(&tms);
       benchtime = tms.tms_utime - starttime - nulltime;
printf("Dhrystone time for %ld passes = %ld\n", (long) LOOPS, benchtime/HZ);
printf("This machine benchmarks at %ld dhrystones/second\n",
       ((long) LOOPS) * HZ / benchtime);
#endif
 
}
 
Proc1(PtrParIn)
REG RecordPtr  PtrParIn;
{
#define        NextRecord      (*(PtrParIn->PtrComp))
 
       structassign(NextRecord, *PtrGlb);
       PtrParIn->IntComp = 5;
       NextRecord.IntComp = PtrParIn->IntComp;
       NextRecord.PtrComp = PtrParIn->PtrComp;
       Proc3(NextRecord.PtrComp);
       if (NextRecord.Discr == Ident1)
       {
               NextRecord.IntComp = 6;
               Proc6(PtrParIn->EnumComp, &NextRecord.EnumComp);
               NextRecord.PtrComp = PtrGlb->PtrComp;
               Proc7(NextRecord.IntComp, 10, &NextRecord.IntComp);
       }
       else
               structassign(*PtrParIn, NextRecord);
 
#undef NextRecord
}
 
Proc2(IntParIO)
OneToFifty     *IntParIO;
{
       REG OneToFifty          IntLoc;
       REG Enumeration         EnumLoc;
 
       IntLoc = *IntParIO + 10;
       for(;;)
       {
               if (Char1Glob == 'A')
               {
                       --IntLoc;
                       *IntParIO = IntLoc - IntGlob;
                       EnumLoc = Ident1;
               }
               if (EnumLoc == Ident1)
                       break;
       }
}
 
Proc3(PtrParOut)
RecordPtr      *PtrParOut;
{
       if (PtrGlb != NULL)
               *PtrParOut = PtrGlb->PtrComp;
       else
               IntGlob = 100;
       Proc7(10, IntGlob, &PtrGlb->IntComp);
}
 
Proc4()
{
       REG boolean     BoolLoc;
 
       BoolLoc = Char1Glob == 'A';
       BoolLoc |= BoolGlob;
       Char2Glob = 'B';
}
 
Proc5()
{
       Char1Glob = 'A';
       BoolGlob = FALSE;
}
 
extern boolean Func3();
 
Proc6(EnumParIn, EnumParOut)
REG Enumeration        EnumParIn;
REG Enumeration        *EnumParOut;
{
       *EnumParOut = EnumParIn;
       if (! Func3(EnumParIn) )
               *EnumParOut = Ident4;
       switch (EnumParIn)
       {
       case Ident1:    *EnumParOut = Ident1; break;
       case Ident2:    if (IntGlob > 100) *EnumParOut = Ident1;
                       else *EnumParOut = Ident4;
                       break;
       case Ident3:    *EnumParOut = Ident2; break;
       case Ident4:    break;
       case Ident5:    *EnumParOut = Ident3;
       }
}
 
Proc7(IntParI1, IntParI2, IntParOut)
OneToFifty     IntParI1;
OneToFifty     IntParI2;
OneToFifty     *IntParOut;
{
       REG OneToFifty  IntLoc;
 
       IntLoc = IntParI1 + 2;
       *IntParOut = IntParI2 + IntLoc;
}
 
Proc8(Array1Par, Array2Par, IntParI1, IntParI2)
Array1Dim      Array1Par;
Array2Dim      Array2Par;
OneToFifty     IntParI1;
OneToFifty     IntParI2;
{
       REG OneToFifty  IntLoc;
       REG OneToFifty  IntIndex;
 
       IntLoc = IntParI1 + 5;
       Array1Par[IntLoc] = IntParI2;
       Array1Par[IntLoc+1] = Array1Par[IntLoc];
       Array1Par[IntLoc+30] = IntLoc;
       for (IntIndex = IntLoc; IntIndex <= (IntLoc+1); ++IntIndex)
               Array2Par[IntLoc][IntIndex] = IntLoc;
       ++Array2Par[IntLoc][IntLoc-1];
       Array2Par[IntLoc+20][IntLoc] = Array1Par[IntLoc];
       IntGlob = 5;
}
 
Enumeration Func1(CharPar1, CharPar2)
CapitalLetter  CharPar1;
CapitalLetter  CharPar2;
{
       REG CapitalLetter       CharLoc1;
       REG CapitalLetter       CharLoc2;
 
       CharLoc1 = CharPar1;
       CharLoc2 = CharLoc1;
       if (CharLoc2 != CharPar2)
               return (Ident1);
       else
               return (Ident2);
}
 
boolean Func2(StrParI1, StrParI2)
String30       StrParI1;
String30       StrParI2;
{
       REG OneToThirty         IntLoc;
       REG CapitalLetter       CharLoc;
 
       IntLoc = 1;
       while (IntLoc <= 1)
               if (Func1(StrParI1[IntLoc], StrParI2[IntLoc+1]) == Ident1)
               {
                       CharLoc = 'A';
                       ++IntLoc;
               }
       if (CharLoc >= 'W' && CharLoc <= 'Z')
               IntLoc = 7;
       if (CharLoc == 'X')
               return(TRUE);
       else
       {
               if (strcmp(StrParI1, StrParI2) > 0)
               {
                       IntLoc += 7;
                       return (TRUE);
               }
               else
                       return (FALSE);
       }
}
 
boolean Func3(EnumParIn)
REG Enumeration        EnumParIn;
{
       REG Enumeration EnumLoc;
 
       EnumLoc = EnumParIn;
       if (EnumLoc == Ident3) return (TRUE);
       return (FALSE);
}
 
#ifdef NOSTRUCTASSIGN
memcpy(d, s, l)
register char  *d;
register char  *s;
int    l;
{
       while (l--) *d++ = *s++;
}
#endif
 
