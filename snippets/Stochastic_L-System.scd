// nx2012-07-12_22_25_48

// Stochastic L-System

////////////////////////////////////////////////////////////////////
// Pseudocode:

// Variables:
// v = max lenght of array w. RANDOM(100,300)
// w = empty array.
// x = 0
// y = RANDOM(0,1)
// z = RANDOM(0,1)

// PASS 1

// x = RANDOM(0,1)

// PASS 2

// IF x < 0.5:
//      ADD to w : x,y,x,z
// ELSE:
//      ADD to w : x,z,x,y

// PASS 3

// IF lenght w < v:
//       GOTO PASS 1
// ELSE:
//       ERASE w
//       GOTO PASS 1

/////////////////////////////////////////////////////////////////////

// Implementation:

t = Task({
	var alpha, beta, time, delta, epsilon;
	alpha = rrand(50,100);
	beta = Array.new(alpha);
	time = rrand(1,1);
	("alpha = " + alpha).postln;
	("time = " + time).postln;
	delta = rrand(0.0,1.0);
	("delta = " +  delta).postln;
	epsilon = rrand(0.0,1.0);
	("epsilon = " + epsilon).postln;
	inf.do({   
		var gamma;
		"PASS 1".postln;
		gamma = rrand(0.0,1.0);
		("gamma = " + gamma).postln;
		"PASS 2".postln;
		if( gamma < 0.5, { beta.add(gamma);
			beta.add(delta);beta.add(gamma);beta.add(epsilon)},
			{ beta.add(gamma);
			beta.add(epsilon);beta.add(gamma);beta.add(delta)});
		("beta = " + beta).postln;
		"PASS 3".postln;
		("alpha = " + alpha).postln;
		("beta.size = " + beta.size).postln;
		if( beta.size < alpha, {
			"GOTO PASS 1";
		},{beta = Array.new(alpha); gamma.postln});
		time.wait;
	})
});

t.play;
t.stop;		
	
//////////////////////////////////////////////////////////////////////////////
// Seq example:

// Sound:

~x.play;

~x = { arg freq,t_trig; Pan2.ar(EnvGen.ar(Env.perc(),t_trig) * 
	SinOsc.ar(freq*400))};

// Task:
// Requires non-zero lengh init of array for seq.

t = Task({
	var alpha, beta, time, delta, epsilon;
	alpha = rrand(20,50);
	beta = Array.new(alpha);
	time = rrand(1,5);
	("alpha = " + alpha).postln;
	("time = " + time).postln;
	delta = rrand(0.0,1.0);
	("delta = " +  delta).postln;
	epsilon = rrand(0.0,1.0);
	("epsilon = " + epsilon).postln;
	inf.do({   
		var gamma;
		"PASS 1".postln;
		gamma = rrand(0.0,1.0);
		("gamma = " + gamma).postln;
		"PASS 2".postln;
		if( gamma < 0.5, { beta.add(gamma);
			beta.add(delta);beta.add(gamma);beta.add(epsilon)},
			{ beta.add(gamma);
			beta.add(epsilon);beta.add(gamma);beta.add(delta)});
		("beta = " + beta).postln;
		"PASS 3".postln;
		Tdef(\x, {   
				(beta.size).do{ |i| beta[i].postln; ~x.set(\freq, beta[i]); 
					~x.set(\t_trig, 1);(time/beta.size).wait }
		}).play;
		("alpha = " + alpha).postln;
		("beta.size = " + beta.size).postln;
		if( beta.size < alpha, {
			"GOTO PASS 1";
		},{for(0, beta.size-4, {beta.pop()}); beta.postln});
		time.wait;
	})});

t.play;
t.stop; Tdef(\x).stop;