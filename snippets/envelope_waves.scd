
// Waves of envelopes:

~a.play;

~a = {
	var env1,env2;
	env1 = rrand(1,2);
	env2 = rrand(1,2);
	Pan2.ar(
		EnvGen.kr(Env.new([0, 1, 0,], [env1/2, env1/2]), Impulse.kr(1/(env1+0.5)))
		* SinOsc.ar(TRand.kr(66,300,Impulse.kr(1/(env1+0.5)))),-1) +
	Pan2.ar(
		EnvGen.kr(Env.new([0, 1, 0,], [env2/2, env2/2]), Impulse.kr(1/(env2+0.5)))
		* SinOsc.ar(TRand.kr(66,300,Impulse.kr(1/(env2+0.5)))),1)
};

~a = nil;
