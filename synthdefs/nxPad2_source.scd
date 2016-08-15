// nxPad2
// Miquel Parera - August, 2016

(
SynthDef(\nxPad2, {|freq = 0, durA = 0, durB = 0, bus = 0, trig = 0, fl = 0, vol = 0|
	var klang;
    klang =
	Pulse.ar(freq.midicps,rrand(0.1,0.9)) +
	Pulse.ar((freq*2).midicps,rrand(0.1,0.9),0.25) +
	Pulse.ar((freq/2).midicps,rrand(0.1,0.9),1.25)
	* EnvGen.kr(Env.asr(durA,1,durB),trig);
	Out.ar(bus, Normalizer.ar(FreeVerb.ar(klang,
		rrand(0.8,1.0),rrand(0.8,1.0),rrand(0.8,1.0)),vol,0.01));
}).store;
)