
// randoms

5.0.rand; // zero to 5.0
5.0.linrand; // zero to 5.0

5.0.rand2; // -5.0 to 5.0
5.0.bilinrand; // -5.0 to 5.0
5.0.sum3rand; // -5.0 to 5.0

rrand(1.0,5.0); // 1.0 to 5.0
exprand(1.0,5.0); // 1.0 to 5.0

0.5.coin; //1.0 always true,0.0 always false,0.5 50:50 chance

10.do({ [ 1, 2, 3 ].choose.postln}); // equal choose
10.do({ [ 1, 2, 3 ].wchoose([0.1, 0.2, 0.7]).postln}); //weighted choice  

List[ 1, 2, 3, 4, 5 ].scramble.postln; // randomize a list

f = { |n=8, min=0, max=7| (min..max).scramble.keep(n) };
f.value(8, 0, 7); // list without duplicates

//The probability argument sets the chance that two adjacent elements will be separated.

[ 1, 2, 3, 4, 5, 6, 7, 8 ].curdle(0.2).postln; // big groups
[ 1, 2, 3, 4, 5, 6, 7, 8 ].curdle(0.75).postln; // small groups


//UGens that generate random numbers once, or on trigger:

Rand //uniform distribution of float between (lo, hi), as for numbers.
IRand //uniform distribution of integer numbers.
NRand //sum of n uniform distributions, approximates gaussian distr. with higher n.
ExpRand //exponential distribution

TRand //uniform distribution of float numbers, triggered
TIRand //uniform distribution of integer numbers, triggered
LinRand //skewed distribution of float numbers, triggered
TExpRand //exponential distribution, triggered

TWindex //triggered weighted choice between a list

CoinGate //statistical gate for a trigger


// UGens that generate random numbers on demand ("Demand UGens"):

Dwhite
Dbrown
Diwhite
Dibrown
Drand
Dxrand

// Random Patterns: 

Prand([ 1, 2, 3 ], inf); // choose randomly one from a list ( list, numRepeats)

Tdef(\x, { 
	var x;
	x = Plazy({ Prand([1,2,3],inf) }).asStream;
	x.do({ arg item;
		item.postln;
		0.5.wait;
})}).play;

Tdef(\x).stop;

Pxrand([ 1, 2, 3 ]); // choose one element from a list, no repeat of previous choice
Pwhite(24, 72); // within range [<hi>, <lo>], choose a random value.
Pbrown(24, 72, 5) // within range [<hi>, <lo>], do a random walk

// with a maximum <step> to the next value.
Pgbrown(24, 72, 1.4) // geometric brownian motion

Plprand  
Phprand
Pmeanrand
Pbeta
Pcauchy
Pgauss
Ppoisson
Pexprand

Pwrand([ 1, 2, 3 ], [0.1, 0.3, 0.6], 20); // choose from a list, probabilities by weights
Pshuf([ 1, 2, 3, 4 ], 2); // scramble the list, then repeat that order <repeats> times.
Pwalk( (0 .. 10), Prand([ -2,-1, 1, 2], inf)); // random walk. 

Pfsm // random finite state machine pattern, see its help file. 
// see also MarkovSet in MathLib quark

Pseed(seed, pattern) // sets the random seed for that stream.




     