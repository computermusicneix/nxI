
// nx2016-06-19_05_39_10
// rewrite ~nx20160610

~nx20160610.play(0);

(
~nx20160610 = {  var t1,t2,t3,t4;
	    t1 = rrand(0.001,0.01);
	    t2 = rrand(0.001,0.01);
	    t3 = rrand(0.001,0.01);
	    t4 = rrand(0.001,0.01);
	    LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RLPF.ar(RHPF.ar(
			Mix.new([
			CombC.ar(SinOsc.ar(rrand(100.0,200.0)) * EnvGen.kr(Env.perc(t1/2,t1/2), Impulse.kr(1/t1)),0.2,0.2,t1*3),
				CombC.ar(SinOsc.ar(rrand(100.0,200.0)) * EnvGen.kr(Env.perc(t2/2,t2/2), Impulse.kr(1/t1)),0.2,0.2,t2*3),
				CombC.ar(SinOsc.ar(rrand(10.0,100.0)) * EnvGen.kr(Env.perc(t3/2,t3/2), Impulse.kr(1/t1)),0.2,0.2,t3*3),
				CombC.ar(SinOsc.ar(rrand(10.0,100.0)) * EnvGen.kr(Env.perc(t4/2,t4/2), Impulse.kr(1/t1)),0.2,0.2,t4*3)
			]),rrand(2000.0,13000.0),0.01,100),rrand(10.0,100.0),0.01)
		,0.1,0.1,0.1)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(1.33/0.999)*1.0,0.1))
}
)

~nx20160610.end(5);
~nx20160610 = nil;

/// try class

~a.play(0);

~a = { NX20160610.ar(0.01) };

// try pd/gem class

m.sendMsg("/open", File.getcwd ++ "/puredata/NXGM00101.pd");
m.sendMsg("/close", "NXGM00101.pd");

// try a improvisation:

NXVRec.a;
NXVRec.b("I");

~a.play(0);

~a.fadeTime = 100;

~a = { NXSC001.ar(0.5,v1:rrand(0.0,1.0),v2:rrand(0.0,1.0),v3:rrand(0.0,1.0)) };

m.sendMsg("/open", File.getcwd ++ "/neix/puredata/NXGM00101.pd");

NXVRec.c;

// retry a improvisation

Platform.userHomeDir;