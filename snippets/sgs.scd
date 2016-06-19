
// Synchronous Granular Synthesis (SGS)

// A. Load a sample as wavetable:

(
f = SoundFile.openRead(Platform.userAppSupportDir +/+ "/nxAudio/nxSample-"++rrand(1,100)++".wav");
f.seek(0);
f.readData(d=Signal.newClear(512));
f.close;
d = d.asWavetable;
b = Buffer.sendCollection(s,d,wait:-1);
);

// One stream:

// alpha = ms of envelope.
// beta = Density of grains (ms)
// gamma = Frequency of wave.

~x.play;

~x = { var alpha, beta, gamma;
	alpha = rrand(100,1000).postln;
	beta = rrand(10,500).postln;
	gamma = rrand(1,1000).postln;
	Pan2.ar(
	EnvGen.ar(Env.new([0,1,0],[(alpha/2)*1000,(alpha/2)*1000],'sine'),
		Impulse.kr((1/beta)*1000))*
		OscN.ar(b,gamma,0.0)
		,0.0)
};

~x = nil;