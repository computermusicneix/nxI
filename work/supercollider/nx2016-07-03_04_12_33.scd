
NXVRec.a;
NXVRec.b("I");

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00202.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00204.pd");
)

m.sendMsg("/title", NXVRec.title);
m.sendMsg("/erase", "");

~a.play(0);

~a.fadeTime = 100;


~a = { NXSC001.ar(2,12,-12,-12,-12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~b.play(1);

~b.fadeTime = 100;


~b = { NXSC002.ar(1,-12,-12,-12,12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~c.play(2);

~c.fadeTime = 100;


~c = { NXSC001.ar(1,-12,-12,-12,12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~d.play(3);

~d.fadeTime = 100;


~d = { NXSC002.ar(2,12,-12,-12,-12,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~d.end(33);

(
m.sendMsg("/close", "NXGM00101.pd");
m.sendMsg("/close", "NXGM00202.pd");
m.sendMsg("/close", "NXGM00103.pd");
m.sendMsg("/close", "NXGM00204.pd");
)

~a = nil; ~b = nil; ~c = nil; ~d = nil;

NXVRec.c;