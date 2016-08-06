
(
SynthDef(\nxArp1, {|freq = 0, durA = 0, durB = 0, bus = 0, trig = 0, vol = 0|
	var klang;
    klang =
	RHPF.ar(
	RLPF.ar(
	SinOsc.ar(freq.cpsmidi)
		,freq.cpsmidi/4,0.01,100),
		freq.cpsmidi*10000,0.01,100)
	* EnvGen.kr(Env.perc(durA,durB),trig);
	Out.ar(bus, Normalizer.ar((klang.distort*1000),vol,0.01));
}).store;
)

d = Synth(\nxArp1, [\bus,0,\vol,0.5]);

a = Scale.choose;
b = rrand(0.07,0.1);
c = rrand(3,8);


(
Tdef(\a, {
	var root = rrand(40,200),
	melody = Array.fill(c, { root + a[rrand(-12,12)] }),
	durA = Array.fill(c, { rrand(0.01,10.0) }),
	durB = Array.fill(c, { rrand(0.01,10.0) }),
	reps = rrand(4,16);
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
Tdef(\a).stop; d.set(\trig,0);
d.free;

d.set(\bus, 0);

// pad

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

e = Synth(\nxPad1, [\bus,1,\fl,b,\vol,0.75]);

(
Tdef(\b, {
	var root = rrand(40,60),
	melody = Array.fill(c, { root + a[rrand(-12,12)] }),
	durA = Array.fill(c, { rrand(10,10.0) }),
	durB = Array.fill(c, { rrand(10,10.0) }),
	reps = rrand(4,16);
	melody.postln;
	loop({
		melody[rrand(0,c-1)] = root + a[rrand(-12,12)];
		melody.postln;
		reps.do({
		c.do({|i|
			e.set(\freq, melody[i], \durA, durA[i], \durB, durB[i],\trig, 1);
				(b*50).wait;
			e.set(\trig, 0);
				(b*50).wait;
		})
		})
	})
})
)
e.set(\vol, 0.75);

Tdef(\b).play;
Tdef(\b).stop; e.set(\trig, 0);
e.free;