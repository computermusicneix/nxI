// nxArp1
// Miquel Parera - August, 2016

(
SynthDef(\nxArp1, {|freq = 0, durA = 0, durB = 0, bus = 0, trig = 0, vol = 0|
	var klang;
    klang =
	RHPF.ar(
	RLPF.ar(
	SinOsc.ar(freq.cpsmidi)
		,freq.cpsmidi,0.1,100),
		freq.cpsmidi*10000,0.01,100)
	* EnvGen.kr(Env.perc(durA,durB),trig);
	Out.ar(bus, Normalizer.ar((klang.distort*1000),vol,0.01));
}).store;
)