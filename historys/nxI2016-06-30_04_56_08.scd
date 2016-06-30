///////////////////////////////////////////////////
// History, as it was on Thu Jun 30 05:02:12 2016.
///////////////////////////////////////////////////

// - 0:0:0 -  
NXVRec.b("I2016-06-30_04_56_08-A-");

// - 0:0:6.29 -  
(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00201.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00202.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00203.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00204.pd");
);

// - 0:0:8.5 -  
m.sendMsg("/title", NXVRec.title );

// - 0:0:9.97 -  
~a.play(0);

// - 0:0:10.86 -  
~a.fadeTime = 100;

// - 0:0:11.65 -  
~a = { NXSC002.ar(rrand(0.2,0.8), [-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:0:56.86 -  
m.sendMsg("/erase", "" );

// - 0:1:22.16 -  
~b.play(1);

// - 0:1:23.52 -  
~b.fadeTime = 100;

// - 0:1:25.01 -  
~b = { NXSC002.ar(rrand(0.2,0.8), [-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:2:15.54 -  
~c.play(2);

// - 0:2:16.55 -  
~c.fadeTime = 100;

// - 0:2:17.73 -  
~c = { NXSC002.ar(rrand(0.2,0.8), [-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:3:3.58 -  
~d.play(3);

// - 0:3:5.84 -  
~d.fadeTime = 100;

// - 0:3:7.69 -  
~d = { NXSC002.ar(rrand(0.2,0.8), [-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,[-12,12,0,6,-6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

// - 0:4:19.69 -  
~a.end(30);

// - 0:4:48.03 -  
~b.end(30);

// - 0:5:10.96 -  
~c.end(30);

// - 0:5:30.79 -  
~d.end(30);

// - 0:6:0.58 -  
(
m.sendMsg("/close", "NXGM00201.pd");
m.sendMsg("/close", "NXGM00202.pd");
m.sendMsg("/close", "NXGM00203.pd");
m.sendMsg("/close", "NXGM00204.pd");
);

// - 0:6:1.72 -  
~a = nil; ~b = nil; ~c = nil; ~d = nil;

// - 0:6:3 -  
NXVRec.c;

