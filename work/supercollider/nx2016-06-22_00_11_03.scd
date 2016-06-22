
// nx2016-06-22_00_11_03

m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");

~a.play(0);
~a.fadeTime = 0;

~a = { NXSC001.ar(1) };

~a.end(33);
~a = nil;

// improvisation

NXVRec.a;
NXVRec.b("I");

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00101.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00102.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00103.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
)

m.sendMsg("/title", NXVRec.title);
m.sendMsg("/erase", "");

~a.play(0);
~a.fadeTime = 100;

~a = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~b.play(1);
~b.fadeTime = 100;

~b = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~c.play(2);
~c.fadeTime = 100;

~c = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~d.play(3);
~d.fadeTime = 100;

~d = { NXSC001.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~a.end(33);
~b.end(33);
~c.end(33);
~d.end(33);

(
m.sendMsg("/close", "NXGM00101.pd");
m.sendMsg("/close", "NXGM00102.pd");
m.sendMsg("/close", "NXGM00103.pd");
m.sendMsg("/close", "NXGM00104.pd");
)

~a = nil; ~b = nil; ~c = nil; ~d = nil;

NXVRec.c;

// x 3

(
a = 0;
w = SkipJack({
        if(History.current.player.isActive.not){
                1.wait;
                History.loadStory(Platform.userHomeDir ++ "/nxD001/nxI2016-06-22_04_34_42/nxI2016-06-22_04_34_42.scd");
                History.play;
                a = a + 1;

        }
}, 0.1, { a > 2 }, name: \histWatch);
)