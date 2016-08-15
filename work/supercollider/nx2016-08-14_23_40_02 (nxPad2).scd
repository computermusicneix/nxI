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

//

a = Scale.choose;
b = rrand(0.07,0.1);
c = rrand(3,8);

e = Synth(\nxPad2, [\bus,1,\fl,b,\vol,1.0]);
e.free;

(
Tdef(\b, {
	var root = rrand(40,60),
	melody = Array.fill(c, { root + a[rrand(-12,12)] }),
	durA = Array.fill(c, { rrand(10,10.0) }),
	durB = Array.fill(c, { rrand(10,10.0) }),
	reps = rrand(4,16),
	mult = rrand(50,100);
	melody.postln;
	loop({
		melody[rrand(0,c-1)] = root + a[rrand(-12,12)];
		melody.postln;
		reps.do({
		c.do({|i|
			e.set(\freq, melody[i], \durA, durA[i], \durB, durB[i],\trig, 1);
				(b*mult).wait;
			e.set(\trig, 0);
				(b*mult).wait;
		})
		})
	})
})
)

Tdef(\b).play;
Tdef(\b).stop; e.set(\trig, 0);