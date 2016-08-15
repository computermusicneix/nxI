// nxArp2
// Miquel Parera - August, 2016

(
SynthDef(\nxArp2, {|freq = 0, durA = 0, durB = 0, bus = 0, trig = 0, vol = 0|
	var klang;
    klang =
	RHPF.ar(
	RHPF.ar(
			Pulse.ar((freq/4).midicps)
			,freq.midicps*2,0.1),
		     freq.midicps,0.1)
	* EnvGen.kr(Env.perc(durA/100,durB/10),trig);
	Out.ar(bus, Normalizer.ar(
		FreeVerb.ar((klang.distort*100)
			,rrand(0.1,0.9)
			,rrand(0.1,0.9)
			,rrand(0.1,0.9))
		,vol,0.01));
}).store;
)