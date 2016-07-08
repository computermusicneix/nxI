///////////////////////////////////////////////////
// History, as it was on Fri Jul  8 05:11:25 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXVRec.b("I2016-07-08_05_04_18-A-");

// - 0:0:6.94 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00301.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00302.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00302.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00304.pd");
);

// - 0:0:9.99 -  
m.sendMsg("/title", NXVRec.title);

// - 0:0:13.94 -  
~a.play(0);

// - 0:0:15.73 -  
~a.fadeTime = 50;

// - 0:0:17.26 -  
~a = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:0:33.09 -  
m.sendMsg("/erase", "");

// - 0:1:17.35 -  
~b.play(1);

// - 0:1:18.24 -  
~b.fadeTime = 50;

// - 0:1:19.35 -  
~b = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:2:16.28 -  
~c.play(2);

// - 0:2:17.7 -  
~c.fadeTime = 50;

// - 0:2:19.28 -  
~c = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:3:8.91 -  
~d.play(3);

// - 0:3:9.87 -  
~d.fadeTime = 50;

// - 0:3:11.12 -  
~d = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

// - 0:4:59.3 -  
~a.end(33);

// - 0:5:24.79 -  
~b.end(33);

// - 0:6:9.52 -  
~c.end(33);

// - 0:6:29.08 -  
~d.end(33);

// - 0:7:2.69 -  
(
m.sendMsg("/close", "NXGM00301.pd");
m.sendMsg("/close", "NXGM00302.pd");
m.sendMsg("/close", "NXGM00303.pd");
m.sendMsg("/close", "NXGM00304.pd");
);

// - 0:7:4.2 -  
~a = nil; ~b = nil; ~c = nil; ~d = nil;

// - 0:7:5.52 -  
NXVRec.c;

