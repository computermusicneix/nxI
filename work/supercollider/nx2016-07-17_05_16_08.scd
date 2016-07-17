
NXVRec.a;

"fullscreen".postln;

NXVRec.b("I");

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00401.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00402.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00403.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00404.pd");
)

m.sendMsg("/title", NXVRec.title);
m.sendMsg("/erase", "");

~a.play(0);
~a.fadeTime = 100;

~a = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~b.play(1);
~b.fadeTime = 100;

~b = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~c.play(2);
~c.fadeTime = 100;

~c = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~d.play(3);
~d.fadeTime = 100;

~d = { NXSC004.ar(rrand(0.3,0.8),rrand(-6,6),rrand(-6,6),rrand(-6,6),rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };

~d.end(33);

(
m.sendMsg("/close", "NXGM00401.pd");
m.sendMsg("/close", "NXGM00402.pd");
m.sendMsg("/close", "NXGM00403.pd");
m.sendMsg("/close", "NXGM00404.pd");
)

~a = nil; ~b = nil; ~c = nil; ~d = nil;

NXVRec.c;

/////////////////

(
a = 0;
w = SkipJack({
        if(History.current.player.isActive.not){
                1.wait;
                History.loadStory(Platform.userHomeDir ++ "/neix/historys/nxI2016-07-17_05_21_38.scd");
                History.play;
                a = a + 1;

        }
}, 0.1, { a > 2 }, name: \histWatch);
)