// Dynamic Waveshaping 
// A jitlib/semideterministic adaptation from the Chris Jeffs
// conference on the First Barcelona SuperCollider User's Meeting

// A

x = Signal.sineFill(513, [0.5, 0.2, 0.3, 0.0, 0.2]);
b = Buffer.alloc(s, 1024, 1);
b.sendCollection(x.asWavetableNoWrap);

~x.play;

~x = { Pan2.ar(Shaper.ar(b.bufnum, SinOsc.ar(Rand(80,800), 0, 0.7)),0)};

// B

~x = { Pan2.ar(LeakDC.ar( BufRd.ar(1, b.bufnum,
	LinLin.ar(
		SinOsc.ar(Rand(20,500), 0, 0.8)
		, -1.0, 1.0, 0.0, BufFrames.kr(b.bufnum))
	,0,4)),0)};

// You can change the buffer:

x = Signal.sineFill(1000, [1, 0.2, 0.7]);
// or..
x = Signal.sineFill(1000, [0, 0.2, 0.8, 0.1, 0.5]);

b = Buffer.sendCollection(s, x, 1);

~x = { Pan2.ar(LeakDC.ar( BufRd.ar(1, b.bufnum,
	LinLin.ar(
		SinOsc.ar(Rand(20,500), 0, 0.8)
		, -1.0, 1.0, 0.0, BufFrames.kr(b.bufnum))
	,0,4)),0)};

// C

~x = { var alpha;
	alpha = rrand(0.1,0.7);
	Pan2.ar(LeakDC.ar( BufRd.ar(1, b.bufnum,
	LinLin.ar(
		SinOsc.ar(Rand(20,500), 0, 0.32, 
			SinOsc.kr(Rand(0.1,1.0)).range(0.0 - alpha, alpha))
		, -1.0, 1.0, 0.0, BufFrames.kr(b.bufnum))
	,0,4)),0)};

// Independent function:

~x = { var alpha,beta,gamma;
	alpha = rrand(0.1,0.6);
	beta = Signal.sineFill(1000, 
		[0,rrand(0.1,0.9),rrand(0.1,0.9),rrand(0.1,0.9),rrand(0.1,0.9)]);
	gamma = Buffer.sendCollection(s, beta, 1);
	Pan2.ar(LeakDC.ar( BufRd.ar(1, gamma.bufnum,
	LinLin.ar(
		SinOsc.ar(Rand(20,500), 0, 0.32, 
			SinOsc.kr(Rand(0.1,1.0)).range(0.0 - alpha, alpha))
		, -1.0, 1.0, 0.0, BufFrames.kr(gamma.bufnum))
	,0,4)),0)};


// D

~x = { var beta,gamma;
	beta = Signal.sineFill(1000, 
		[0,rrand(0.1,0.9),rrand(0.1,0.9),rrand(0.1,0.9),rrand(0.1,0.9)]);
	gamma = Buffer.sendCollection(s, beta, 1);
	BufWr.ar(Mix(
		SinOsc.ar(SampleRate.ir / BufFrames.kr(gamma.bufnum) * (1 .. 6), 
			Array.linrand(6, 0.0, 6.28), 
			SinOsc.kr(Array.exprand(6, 0.1, 0.3), 0, 0.2))), 
		gamma.bufnum, Phasor.ar(0, 
			BufRateScale.kr(gamma.bufnum), 0, BufFrames.kr(gamma.bufnum)));
	Pan2.ar(LeakDC.ar( 
		BufRd.ar(1, gamma.bufnum,
	LinLin.ar(
		SinOsc.ar(Rand(20,500), 0, 0.8)
		, -1.0, 1.0, 0.0, BufFrames.kr(gamma.bufnum))
	,0,4))
,0)};
