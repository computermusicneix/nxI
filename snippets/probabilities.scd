
// Probabilities on a Synth

~a.play;

~a = { var index, freq;
	index = TWindex.kr(Impulse.kr(3), [1,0,1,0].normalizeSum);
	freq = Select.kr(index, [300,400,500,200]);
	SinOsc.ar(freq)
};

~a = nil;