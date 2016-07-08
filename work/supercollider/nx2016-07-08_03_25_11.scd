
// nx2016-07-08_03_25_11

NXSC003.ar

~nxsc003.play(0);
~nxsc003.fadeTime = 100;

(
~nxsc003 = {  var alpha,beta,gamma;
			alpha = rrand(100,300);
			beta = rrand(100,440);
			gamma = rrand(100,440);
			LeakDC.ar(Normalizer.ar(
				BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(RLPF.ar(
			FreeVerb.ar(
			RHPF.ar(RLPF.ar(
					RHPF.ar(
                    Saw.ar(TRand.kr(alpha,alpha+10, Impulse.kr(rrand(10,100))))+
					CombC.ar(Saw.ar(TRand.kr(beta,beta+1000, Impulse.kr(rrand(10,100))))
                    ,1,1,0.1),17000,0.01)+
					Saw.ar(TRand.kr(alpha,alpha+100, Impulse.kr(rrand(10,100))))+
					Formant.ar(TRand.kr(gamma,gamma+
						TRand.kr(1,100, Impulse.kr(rrand(0.1,1)))
						, Impulse.kr(rrand(10,100))))
						,rrand(100,100),1,100),rrand(1000,20000),0.1,100),
					1.0,1.0,1.0),rrand(100,500),1),rrand(10000,15000),1)
			,rrand(0.1,0.7),rrand(0.1,0.7),rrand(0.1,0.7))
			,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(1.25/0.999)*1,0.1))
         };
)

~nxsc003.end(1);
~nxsc003 = nil;

//
































//improvisation

NXVRec.a;
NXVRec.b("I");

(
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00301.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00302.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00302.pd");
m.sendMsg("/open", Platform.userHomeDir ++ "/neix/puredata/NXGM00304.pd");
)

m.sendMsg("/title", NXVRec.title);
m.sendMsg("/erase", "");

~a.play(0);
~a.fadeTime = 50;

~a = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~b.play(1);
~b.fadeTime = 50;

~b = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~c.play(2);
~c.fadeTime = 50;

~c = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~d.play(3);
~d.fadeTime = 50;

~d = { NXSC003.ar(rrand(0.25,0.75),v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

~d.end(33);

(
m.sendMsg("/close", "NXGM00301.pd");
m.sendMsg("/close", "NXGM00302.pd");
m.sendMsg("/close", "NXGM00303.pd");
m.sendMsg("/close", "NXGM00304.pd");
)

~a = nil; ~b = nil; ~c = nil; ~d = nil;

NXVRec.c;


(
a = 0;
w = SkipJack({
        if(History.current.player.isActive.not){
                1.wait;
                History.loadStory(Platform.userHomeDir ++ "/neix/historys/nxI2016-07-08_05_04_18.scd");
                History.play;
                a = a + 1;

        }
}, 0.1, { a > 2 }, name: \histWatch);
)

































































