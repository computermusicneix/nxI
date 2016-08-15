///////////////////////////////////////////////////
// History, as it was on Mon Aug 15 03:49:47 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
m.sendMsg("/fullscreen", 1.0);

// - 0:0:1.82 -  
NXVRec4.b("I2016-08-15_03_45_40-A-");

// - 0:0:8.11 -  
d = Synth(\nxArp2, [\bus,0,\vol,0.5]);

// - 0:0:9.75 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00701.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00802.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00704.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00803.pd");
);

// - 0:0:12.49 -  
a = Scale.choose;

// - 0:0:13.13 -  
b = rrand(0.07,0.1);

// - 0:0:13.88 -  
c = rrand(3,8);

// - 0:0:16.41 -  
(
Tdef(\a, {
	var root = rrand(40,125),
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

// - 0:0:19.41 -  
m.sendMsg("/title", NXVRec4.title);

// - 0:0:22.52 -  
Tdef(\a).play;

// - 0:0:33.46 -  
m.sendMsg("/erase", "");

// - 0:0:37.33 -  
e = Synth(\nxPad2, [\bus,1,\fl,b,\vol,0.5]);

// - 0:0:38.47 -  
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

// - 0:0:45.86 -  
Tdef(\b).play;

// - 0:1:16.06 -  
f = Synth(\nxArp2, [\bus,3,\vol,0.5]);

// - 0:1:17.4 -  
(
Tdef(\c, {
	var root = rrand(40,125),
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

// - 0:1:35.1 -  
Tdef(\c).play;

// - 0:1:43.96 -  
g = Synth(\nxPad2, [\bus,2,\fl,b,\vol,0.5]);

// - 0:1:45.3 -  
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

// - 0:2:0.27 -  
Tdef(\d).play;

// - 0:3:1.71 -  
Tdef(\a).stop; d.set(\trig,0);

// - 0:3:14.04 -  
Tdef(\c).stop; f.set(\trig,0);

// - 0:3:24.55 -  
Tdef(\b).stop; e.set(\trig, 0);

// - 0:3:34.63 -  
Tdef(\d).stop; g.set(\trig, 0);

// - 0:4:2.08 -  
g.free;f.free; e.free; d.free;

// - 0:4:3.28 -  
a.free; b.free; c.free;

// - 0:4:5.26 -  
(
m.sendMsg("/close", "NXGM00701.pd");
m.sendMsg("/close", "NXGM00704.pd");
m.sendMsg("/close", "NXGM00802.pd");
m.sendMsg("/close", "NXGM00803.pd");
);

// - 0:4:7.22 -  
NXVRec4.c;

