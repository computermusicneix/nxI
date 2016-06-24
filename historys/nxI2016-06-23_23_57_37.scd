///////////////////////////////////////////////////
// History, as it was on Fri Jun 24 00:05:57 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXVRec.b("I2016-06-23_23_57_37-A-");

// - 0:0:3.48 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00102.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
);

// - 0:0:6.5 -  
m.sendMsg("/title", NXVRec.title);

// - 0:0:9.25 -  
~a.play(0);

// - 0:0:10.41 -  
~a.fadeTime = 100;

// - 0:0:11.95 -  
~a = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:0:40.45 -  
m.sendMsg("/erase", "");

// - 0:1:16.17 -  
~b.play(1);

// - 0:1:17.49 -  
~b.fadeTime = 100;

// - 0:1:28.87 -  
~b = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:2:38.82 -  
~c.play(2);

// - 0:2:40.9 -  
~c.fadeTime = 100;

// - 0:2:42.7 -  
~c = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:3:33.75 -  
~d.play(3);

// - 0:3:34.65 -  
~d.fadeTime = 100;

// - 0:3:36.72 -  
~d = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:4:41.39 -  
~a = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:5:26.6 -  
~b = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:6:4.61 -  
~c = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:6:40.48 -  
~a.end(33);

// - 0:7:7.66 -  
~b.end(33);

// - 0:7:21.92 -  
~c.end(33);

// - 0:7:41.82 -  
~d.end(33);

// - 0:8:15.97 -  
(
m.sendMsg("/close", "NXGM00101.pd");
m.sendMsg("/close", "NXGM00102.pd");
m.sendMsg("/close", "NXGM00103.pd");
m.sendMsg("/close", "NXGM00104.pd");
);

// - 0:8:17.26 -  
~a = nil; ~b = nil; ~c = nil; ~d = nil;

// - 0:8:18.45 -  
NXVRec.c;

