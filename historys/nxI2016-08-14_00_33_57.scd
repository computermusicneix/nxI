///////////////////////////////////////////////////
// History, as it was on Sun Aug 14 00:37:36 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
m.sendMsg("/fullscreen", 1.0);

// - 0:0:1.6 -  
NXVRec4.b("I2016-08-14_00_33_57-A-");

// - 0:0:5.58 -  
d = Synth(\nxArp1, [\bus,0,\vol,0.75]);

// - 0:0:7.51 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00501.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00602.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00504.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00603.pd");
);

// - 0:0:9.88 -  
a = Scale.choose;

// - 0:0:10.67 -  
b = rrand(0.07,0.1);

// - 0:0:11.42 -  
c = rrand(3,8);

// - 0:0:12.8 -  
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
);

// - 0:0:16.5 -  
m.sendMsg("/title", NXVRec4.title);

// - 0:0:18.55 -  
Tdef(\a).play;

// - 0:0:27.75 -  
m.sendMsg("/erase", "");

// - 0:0:37.05 -  
e = Synth(\nxPad1, [\bus,1,\fl,b,\vol,0.5]);

// - 0:0:38.59 -  
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
);

// - 0:0:53.55 -  
Tdef(\b).play;

// - 0:0:59.86 -  
f = Synth(\nxArp1, [\bus,3,\vol,0.75]);

// - 0:1:1.22 -  
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
);

// - 0:1:26.51 -  
Tdef(\c).play;

// - 0:1:38.95 -  
g = Synth(\nxPad1, [\bus,2,\fl,b,\vol,0.5]);

// - 0:1:40.48 -  
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
);

// - 0:1:57.87 -  
Tdef(\d).play;

// - 0:2:44.64 -  
Tdef(\a).stop; d.set(\trig,0);

// - 0:2:55.29 -  
Tdef(\c).stop; f.set(\trig,0);

// - 0:3:3.44 -  
Tdef(\b).stop; e.set(\trig, 0);

// - 0:3:10.6 -  
Tdef(\d).stop; g.set(\trig, 0);

// - 0:3:34.86 -  
g.free;f.free; e.free; d.free;

// - 0:3:36.2 -  
a.free; b.free; c.free;

// - 0:3:37.43 -  
(
m.sendMsg("/close", "NXGM00601.pd");
m.sendMsg("/close", "NXGM00504.pd");
m.sendMsg("/close", "NXGM00602.pd");
m.sendMsg("/close", "NXGM00501.pd");
);

// - 0:3:39.83 -  
NXVRec4.c;

