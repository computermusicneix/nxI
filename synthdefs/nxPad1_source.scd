// nxPad1
// Miquel Parera - August, 2016

(
SynthDef(\nxPad1, {|freq = 0, durA = 0, durB = 0, bus = 0, trig = 0, fl = 0, vol = 0|
	var klang;
    klang =
	SinOsc.ar(freq.midicps) +
	SinOsc.ar((freq*1.2).midicps,0,0.025) +
	SinOsc.ar((freq/2).midicps,0)
	* EnvGen.kr(Env.asr(durA,1,durB),trig);
	Out.ar(bus, Normalizer.ar(FreeVerb.ar(
		klang.distort * 2 +
		 DelayN.ar(klang,0.02,SinOsc.kr(fl/2,0,0.005,0.005),1.5)
		,0.7,0.9,1.0),vol,0.01));
}).store;
)