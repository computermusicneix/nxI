///////////////////////////////////////////////////
// History, as it was on Sun Sep 25 04:55:05 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
m.sendMsg('/fullscreen', 1.0);

// - 0:0:2.11 -  
NXVRec4.b("Aeterna2016-09-25_04_44_33-A-");

// - 0:0:9.54 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00901.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00902.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00903.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/nxI/puredata/NXGM00904.pd");
);

// - 0:0:14.28 -  
a = Array.fib(6,rrand(2.0,20.0),rrand(5.0,50.0));

// - 0:0:19.64 -  
m.sendMsg("/title", NXVRec4.title);

// - 0:0:26.45 -  
~a.play(0);

// - 0:0:27.66 -  
~a.fadeTime = rrand(50.0,200.0);

// - 0:0:28.79 -  
(
~a = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:0:44.65 -  
m.sendMsg("/erase", "");

// - 0:0:54.06 -  
~b.play(1);

// - 0:0:55.27 -  
~b.fadeTime = rrand(50.0,200.0);

// - 0:0:56.24 -  
(
~b = { var freq = a[0];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:1:17.58 -  
~c.play(2);

// - 0:1:19.07 -  
~c.fadeTime = rrand(50.0,200.0);

// - 0:1:20.43 -  
(
~c = { var freq = a[0];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:1:43.56 -  
~d.play(3);

// - 0:1:45.02 -  
~d.fadeTime = rrand(50.0,200.0);

// - 0:1:46.27 -  
(
~d = { var freq = a[1];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:2:24.42 -  
(
~b = { var freq = a[1];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:2:31.45 -  
(
~c = { var freq = a[1];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:3:17.53 -  
(
~b = { var freq = a[2];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:3:23.89 -  
(
~d = { var freq = a[2];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:4:4.97 -  
(
~c = { var freq = a[3];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:4:41.99 -  
(
~b = { var freq = a[3];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:5:15.81 -  
(
~d = { var freq = a[3];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:6:7.83 -  
(
~c = { var freq = a[4];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:6:53.07 -  
(
~b = { var freq = a[4];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:7:7.93 -  
(
~d = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:7:42.24 -  
(
~c = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:8:0.7 -  
(
~b = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
);

// - 0:8:49.16 -  
~a.end(60);

// - 0:9:7.84 -  
~b.end(60);

// - 0:9:21.95 -  
~c.end(60);

// - 0:9:23.54 -  
~d.end(60);

// - 0:10:21.36 -  
~a = nil;

// - 0:10:22.29 -  
~b = nil;

// - 0:10:23.01 -  
~c = nil;

// - 0:10:23.74 -  
~d = nil;

// - 0:10:24.53 -  
a = nil;

// - 0:10:30.71 -  
(
m.sendMsg("/close", "NXGM00901.pd");
m.sendMsg("/close", "NXGM00902.pd");
m.sendMsg("/close", "NXGM00903.pd");
m.sendMsg("/close", "NXGM00904.pd");
);

// - 0:10:33.01 -  
NXVRec4.c;

