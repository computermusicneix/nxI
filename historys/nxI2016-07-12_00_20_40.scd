///////////////////////////////////////////////////
// History, as it was on Tue Jul 12 00:29:29 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXVRFull.b("I2016-07-12_00_20_40-A-");m.sendMsg("/fullscreen", 1.0);

// - 0:0:4.82 -  
"fullscreen".postln;

// - 0:0:8.06 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00301.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00302.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00203.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
);

// - 0:0:10.54 -  
m.sendMsg("/title", NXVRFull.title);

// - 0:0:12.78 -  
~a.play(0);

// - 0:0:13.39 -  
~a.fadeTime = 100;

// - 0:0:14.03 -  
~b.play(1);

// - 0:0:14.7 -  
~b.fadeTime = 100;

// - 0:0:15.64 -  
(
~a = { NXSC003.ar(rrand(0.5,1.0),12,-24,-24,-24,v1:rrand(0.0,1.0),v1:rrand(0.0,1.0),v1:rrand(0.0,1.0)) };
~b = { NXSC003.ar(rrand(0.5,1.0),12,-24,-24,-24,v1:rrand(0.0,1.0),v1:rrand(0.0,1.0),v1:rrand(0.0,1.0)) };
);

// - 0:0:58.55 -  
m.sendMsg("/erase", "");

// - 0:2:36.64 -  
~c.play(2);

// - 0:2:37.7 -  
~c.fadeTime = 100;

// - 0:2:39.68 -  
~c = { NXSC002.ar(rrand(0.5,1.0),[-6,0,6].choose,[-6,0,6].choose,[-6,0,6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0) ) }; 

// - 0:4:1.33 -  
~d.play(3);

// - 0:4:2.78 -  
~d.fadeTime = 100;

// - 0:4:4.64 -  
~c = { NXSC001.ar(rrand(0.5,1.0),[-6,0,6].choose,[-6,0,6].choose,[-6,0,6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0) ) };

// - 0:4:9.39 -  
~d = { NXSC001.ar(rrand(0.5,1.0),[-6,0,6].choose,[-6,0,6].choose,[-6,0,6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0) ) };

// - 0:7:6.88 -  
~a.end(33); ~b.end(33);

// - 0:8:8.61 -  
~c.end(33); ~d.end(33);

// - 0:8:44.65 -  
(
m.sendMsg("/close", "NXGM00301.pd");
m.sendMsg("/close", "NXGM00302.pd");
m.sendMsg("/close", "NXGM00203.pd");
m.sendMsg("/close", "NXGM00104.pd");
);

// - 0:8:46.38 -  
~a = nil; ~b = nil; ~c = nil; ~d = nil;

// - 0:8:47.41 -  
NXVRec.c;

