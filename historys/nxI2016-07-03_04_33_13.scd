///////////////////////////////////////////////////
// History, as it was on Sun Jul  3 04:40:19 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXVRec.b("I2016-07-03_04_33_13-A-");

// - 0:0:6.43 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00202.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
);

// - 0:0:11.87 -  
m.sendMsg("/title", NXVRec.title);

// - 0:0:15.28 -  
~a.play(0);

// - 0:0:16.5 -  
~a.fadeTime = 100;

// - 0:0:19.26 -  
~a = { NXSC001.ar(2,12,-12,-12,-12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:0:46.36 -  
m.sendMsg("/erase", "");

// - 0:1:10.97 -  
~b.play(1);

// - 0:1:12.12 -  
~b.fadeTime = 100;

// - 0:1:21.44 -  
~b = { NXSC002.ar(1,-12,-12,-12,12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:2:30.84 -  
~c.play(2);

// - 0:2:31.76 -  
~c.fadeTime = 100;

// - 0:2:32.98 -  
~c = { NXSC001.ar(1,-12,-12,-12,12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:3:17.53 -  
~d.play(3);

// - 0:3:18.61 -  
~d.fadeTime = 100;

// - 0:3:19.92 -  
~d = { NXSC002.ar(2,12,-12,-12,-12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:4:50.66 -  
~a.end(33);

// - 0:5:26.69 -  
~b.end(33);

// - 0:6:0.7 -  
~c.end(33);

// - 0:6:22.97 -  
~d.end(33);

// - 0:6:57.34 -  
(
m.sendMsg("/close", "NXGM00101.pd");
m.sendMsg("/close", "NXGM00202.pd");
m.sendMsg("/close", "NXGM00103.pd");
m.sendMsg("/close", "NXGM00104.pd");
);

// - 0:6:59.74 -  
~a = nil; ~b = nil;  ~c = nil; ~d = nil;

// - 0:7:5.65 -  
NXVRec.c;

