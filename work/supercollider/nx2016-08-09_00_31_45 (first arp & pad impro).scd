
// first arp & pad

// Blank for arp & pad (1)

// 1rst section

// arp

NXVRec4.a;

"fullscreen".postln;

NXVRec4.b("I");

d = Synth(\nxArp1, [\bus,0,\vol,0.75]);

(
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00501.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00602.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00504.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00603.pd");
)

a = Scale.choose;
b = rrand(0.07,0.1);
c = rrand(3,8);

(
Tdef(\a, {
	var root = rrand(40,200),
	melody = Array.fill(c, { root + a[rrand(-12,12)] }),
	durA = Array.fill(c, { rrand(0.01,10.0) }),
	durB = Array.fill(c, { rrand(0.01,10.0) }),
	mult = rrand(1,4),
	reps = rrand(4,16);
	melody.postln;
	loop({
		melody[rrand(0,c-1)] = root + a[rrand(-12,12)];
		melody.postln;
		reps.do({
		c.do({|i|
			d.set(\freq, melody[i], \durA, durA[i], \durB, durB[i],\trig, 1);
				(mult*b).wait;
			d.set(\trig, 0);
				(mult*b).wait;
		})
		})
	})
})
)

m.sendMsg("/title", NXVRec4.title);
m.sendMsg("/erase", "");

Tdef(\a).play;
Tdef(\a).stop; d.set(\trig,0);

// pad

e = Synth(\nxPad1, [\bus,1,\fl,b,\vol,0.25]);

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

// 2on section

// arp

f = Synth(\nxArp1, [\bus,3,\vol,0.75]);

(
Tdef(\c, {
	var root = rrand(40,200),
	melody = Array.fill(c, { root + a[rrand(-12,12)] }),
	durA = Array.fill(c, { rrand(0.01,10.0) }),
	durB = Array.fill(c, { rrand(0.01,10.0) }),
	mult = rrand(1,4),
	reps = rrand(4,16);
	melody.postln;
	loop({
		melody[rrand(0,c-1)] = root + a[rrand(-12,12)];
		melody.postln;
		reps.do({
		c.do({|i|
			f.set(\freq, melody[i], \durA, durA[i], \durB, durB[i],\trig, 1);
				(mult*b).wait;
			f.set(\trig, 0);
				(mult*b).wait;
		})
		})
	})
})
)

Tdef(\c).play;
Tdef(\c).stop; f.set(\trig,0);


// pad

g = Synth(\nxPad1, [\bus,2,\fl,b,\vol,0.25]);

(
Tdef(\d, {
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
			g.set(\freq, melody[i], \durA, durA[i], \durB, durB[i],\trig, 1);
				(b*mult).wait;
			g.set(\trig, 0);
				(b*mult).wait;
		})
		})
	})
})
)

Tdef(\d).play;
Tdef(\d).stop; g.set(\trig, 0);

g.free;f.free; e.free; d.free;
a.free; b.free; c.free;

(
m.sendMsg("/close", "NXGM00601.pd");
m.sendMsg("/close", "NXGM00504.pd");
m.sendMsg("/close", "NXGM00602.pd");
m.sendMsg("/close", "NXGM00501.pd");
)

NXVRec4.c;