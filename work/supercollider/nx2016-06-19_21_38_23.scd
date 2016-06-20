
// nx2016-06-19_21_38_23

// open the pd-gem file

m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");

// send audio

~a.play(0);

~a = { NXSC001.ar(1) };

// try 4x

m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00102.pd");
~b.play(1);
~b = { NXSC001.ar(1) };

m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
~c.play(2);
~c = { NXSC001.ar(1) };

m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
~d.play(3);
~d = { NXSC001.ar(1) };

// end

~a.end(5);
~b.end(5);
~c.end(5);
~d.end(5);

~a = nil; ~b = nil; ~c = nil; ~d = nil;

m.sendMsg("/close", "NXGM00101.pd");
m.sendMsg("/close", "NXGM00102.pd");
m.sendMsg("/close", "NXGM00103.pd");
m.sendMsg("/close", "NXGM00104.pd");


// Try a impro

NXVRec.a;
NXVRec.b("I");

m.sendMsg("/title", "nxI2016-06-19_22_57_17");

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00102.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
)

~a.play(0);
~a.fadeTime = 100;

~a = { NXSC001.ar(rrand(0.25,0.75), v1:rrand(0.0,1.0), v2:rrand(0.0,1.0), v3:rrand(0.0,1.0)) };

NXVRec.c;

// try another improvisation

NXVRec.a;
NXVRec.b("I");

m.sendMsg("/erase", "");

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00102.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
)

~a.play(0);
~a.fadeTime = 100;

~a = { NXSC001.ar(rrand(0.25,0.75), v1:rrand(0.0,0.9), v2:rrand(0.0,0.9), v3:rrand(0.0,0.9) ) };

NXVRec.c;


/////////////////////////////////////////////

NXVRec.a;
NXVRec.b("I");

m.sendMsg("/title", "nxI2016-06-20_04_32_51");
m.sendMsg("/erase", "");

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00102.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
)

~a.play(0);
~a.fadeTime = 100;

~a = { NXSC001.ar(rrand(0.25,0.75), v1:rrand(0.0,0.9), v2:rrand(0.0,0.9),  v3:rrand(0.0,0.9) ) };

~b.play(1);
~b.fadeTime = 100;

~b = { NXSC001.ar(rrand(0.25,0.75), v1:rrand(0.0,0.9), v2:rrand(0.0,0.9),  v3:rrand(0.0,0.9) ) };

~c.play(2);
~c.fadeTime = 100;

~c = { NXSC001.ar(rrand(0.25,0.75), v1:rrand(0.0,0.9), v2:rrand(0.0,0.9),  v3:rrand(0.0,0.9) ) };

~d.play(3);
~d.fadeTime = 100;

~d = { NXSC001.ar(rrand(0.25,0.75), v1:rrand(0.0,0.9), v2:rrand(0.0,0.9),  v3:rrand(0.0,0.9) ) };

~d.end(33);

~a = nil; ~b = nil; ~c = nil; ~d = nil;

(
m.sendMsg("/close", "NXGM00101.pd");
m.sendMsg("/close", "NXGM00102.pd");
m.sendMsg("/close", "NXGM00103.pd");
m.sendMsg("/close", "NXGM00104.pd");
)

NXVRec.c;

////////////////

History.loadStory(Platform.userHomeDir ++ "/nxI2016-06-20_04_32_51.scd");
History.play;

// I need a get for title:

NXVRec.a;
NXVRec.b("I");

m.sendMsg("/title", NXVRec.title);

NXVRec.c;


NXVRec.c;