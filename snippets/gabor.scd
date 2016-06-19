
// Gabor

a = 1.0;

((pi**(1/2))/a)/1000; // At (ms)
(a/(pi**(1/2)))*1000; // Af (Hz)

// Envelope

Env.new([0,1,0],[((pi**(1/2))/a)/2,((pi**(1/2))/a)/2],'sine').test.plot;

// All (a grain)

(
f = SoundFile.openRead(Platform.userAppSupportDir +/+ "/nxAudio/nxSample-"++rrand(1,100)++".wav");
f.seek(0);
f.readData(d=Signal.newClear(512));
f.close;
d = d.asWavetable;
b = Buffer.sendCollection(s,d,wait:-1);
)

~x.play;

(
~x = { Pan2.ar(EnvGen.kr(Env.new([0,1,0],[(((pi**(1/2))/a)/1000)/2,(((pi**(1/2))/a)/1000)/2],'sine'),Impulse.kr(1)) * Osc.ar(b,(a/(pi**(1/2)))*1000,0.0),0) };
)

(
~x = { arg a; Pan2.ar(EnvGen.kr(Env.new([0,1,0],[(((pi**(1/2))/a)/1000)/2,(((pi**(1/2))/a)/1000)/2],'sine'),Impulse.kr(10)) * Osc.ar(b,(a/(pi**(1/2)))*1000,0.0),0) };
)

~x.set(\a, 1.0);

(
~x = { var a;
	a = Demand.kr(Impulse.kr(rrand(5,33)),0,Drand([rrand(0.1,0.5),rrand(1.0,10.0)],inf));
	Pan2.ar(EnvGen.kr(Env.new([0,1,0],[(((pi**(1/2))/a)/1000)/2,(((pi**(1/2))/a)/1000)/2],'sine'),Impulse.kr(10)) * Osc.ar(b,(a/(pi**(1/2)))*1000,0.0),0) };
)


~x = nil;


 