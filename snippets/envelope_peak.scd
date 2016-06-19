
// A envelope with random peak:

// SCSynth size:

ProxySpace.push(s);

~a.play;

~a = { var init, peak_freq, time;
	init = rrand(10,100);
	time = rrand(1,5);
	peak_freq = TRand.kr(300,1040,Impulse.kr((1/(time*2))));
	Pan2.ar(SinOsc.ar(
	EnvGen.kr(Env.new([init,peak_freq,init],[time,time],'sine'),Impulse.kr(1/(time*2)))
		,0)
)};

~a = nil;



