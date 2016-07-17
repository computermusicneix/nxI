///////////////////////////////////////////////////
// History, as it was on Sun Jul 17 05:27:07 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
m.sendMsg("/fullscreen", 1.0);

// - 0:0:2.27 -  
NXVRFull.b("I2016-07-17_05_21_38-A-");

// - 0:0:7.25 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00401.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00402.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00403.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00404.pd");
);

// - 0:0:11.4 -  
m.sendMsg("/title", NXVRFull.title);

// - 0:0:14.59 -  
~a.play(0);

// - 0:0:16.49 -  
~a.fadeTime = 100;

// - 0:0:18.67 -  
~a = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:0:44.39 -  
m.sendMsg("/erase", "");

// - 0:1:10.4 -  
~b.play(1);

// - 0:1:11.41 -  
~b.fadeTime = 100;

// - 0:1:12.6 -  
~b = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:1:51.24 -  
~c.play(2);

// - 0:1:52.14 -  
~c.fadeTime = 100;

// - 0:1:53.12 -  
~c = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:2:15 -  
~d.play(3);

// - 0:2:16.15 -  
~d.fadeTime = 100;

// - 0:2:17.08 -  
~d = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:3:59.76 -  
~a.end(33);

// - 0:4:16.71 -  
~b.end(33);

// - 0:4:33.84 -  
~c.end(33);

// - 0:4:45.07 -  
~c.end(33);

// - 0:4:48.59 -  
~d.end(33);

// - 0:5:26.49 -  
(
m.sendMsg("/close", "NXGM00401.pd");
m.sendMsg("/close", "NXGM00402.pd");
m.sendMsg("/close", "NXGM00403.pd");
m.sendMsg("/close", "NXGM00404.pd");
);

// - 0:5:28.48 -  
~a = nil; ~b = nil; ~c = nil; ~d = nil;

// - 0:5:29.97 -  
NXVRFull.c;

