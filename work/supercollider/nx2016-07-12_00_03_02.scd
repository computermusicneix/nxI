

NXVRec.a;
NXVRec.b("I");

"fullscreen".postln;

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00301.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00302.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00203.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00104.pd");
)

m.sendMsg("/title", NXVRec.title);
m.sendMsg("/erase", "");

~a.play(0);
~a.fadeTime = 100;
~b.play(1);
~b.fadeTime = 100;

(
~a = { NXSC003.ar(rrand(0.5,1.0),12,-24,-24,-24,v1:rrand(0.0,1.0),v1:rrand(0.0,1.0),v1:rrand(0.0,1.0)) };
~b = { NXSC003.ar(rrand(0.5,1.0),12,-24,-24,-24,v1:rrand(0.0,1.0),v1:rrand(0.0,1.0),v1:rrand(0.0,1.0)) };
)

~c.play(2);
~c.fadeTime = 100;

~c = { NXSC002.ar(rrand(0.5,1.0),[-6,0,6].choose,[-6,0,6].choose,[-6,0,6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0) ) };

~d.play(3);
~d.fadeTime = 100;

~d = { NXSC001.ar(rrand(0.5,1.0),[-6,0,6].choose,[-6,0,6].choose,[-6,0,6].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0) ) };

~c.end(33); ~d.end(33);

(
m.sendMsg("/close", "NXGM00301.pd");
m.sendMsg("/close", "NXGM00302.pd");
m.sendMsg("/close", "NXGM00203.pd");
m.sendMsg("/close", "NXGM00104.pd");
)

~a = nil; ~b = nil; ~c = nil; ~d = nil;

NXVRec.c;

///////////

(
a = 0;
w = SkipJack({
        if(History.current.player.isActive.not){
                1.wait;
                History.loadStory(Platform.userHomeDir ++ "/neix/historys/nxI2016-07-12_00_20_40.scd");
                History.play;
                a = a + 1;

        }
}, 0.1, { a > 2 }, name: \histWatch);
)