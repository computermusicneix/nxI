
(
SynthDef(\nxArp1, {|freq = 0, durA = 0, durB = 0, bus = 0, trig = 0|
	var klang;
    klang =
	RHPF.ar(
	RLPF.ar(
	SinOsc.ar(freq.cpsmidi)
		,freq.cpsmidi/4,0.01,100),
		freq.cpsmidi*10000,0.01,100)
	* EnvGen.kr(Env.perc(durA,durB),trig);
	Out.ar(bus, klang.distort*1000);
}).store;
)

d = Synth(\nxArp1, [\bus,0]);

a = Scale.choose;
b = rrand(0.07,0.1);
c = rrand(3,8);


(
Tdef(\a, {
	var root = rrand(40,40),
	melody = Array.fill(c, { root + a[rrand(-12,12)] }),
	durA = Array.fill(c, { rrand(0.01,10.0) }),
	durB = Array.fill(c, { rrand(0.01,10.0) }),
	reps = rrand(2,4);
	melody.postln;
	loop({
		melody[rrand(0,c-1)] = root + a[rrand(-12,12)];
		melody.postln;
		reps.do({
		c.do({|i|
			d.set(\freq, melody[i], \durA, durA[i], \durB, durB[i],\trig, 1);
			b.wait;
			d.set(\trig, 0);
			b.wait;
		})
		})
	})
})
)

Tdef(\a).play;
Tdef(\a).stop;
d.free;