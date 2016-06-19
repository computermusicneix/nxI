NXSC001 {
	*ar {
		arg vol=0.0,q1=6,q2=0,q3=0,q4=6,v1=0.1,v2=0.1,v3=0.1;
		var t1,t2,t3,t4;
"
~nxsc001.play(0);

(
~nxsc001 = {  var t1,t2,t3,t4;
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

~nxsc001.end(3);
~nxsc001 = nil;
".postln;
		t1 = rrand(0.001,0.01);
	    t2 = rrand(0.001,0.01);
	    t3 = rrand(0.001,0.01);
	    t4 = rrand(0.001,0.01);
	    ^LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RLPF.ar(RHPF.ar(
			Mix.new([
			CombC.ar(SinOsc.ar(rrand(100.0,200.0)) * EnvGen.kr(Env.perc(t1/2,t1/2), Impulse.kr(1/t1)),0.2,0.2,t1*3),
				CombC.ar(SinOsc.ar(rrand(100.0,200.0)) * EnvGen.kr(Env.perc(t2/2,t2/2), Impulse.kr(1/t1)),0.2,0.2,t2*3),
				CombC.ar(SinOsc.ar(rrand(10.0,100.0)) * EnvGen.kr(Env.perc(t3/2,t3/2), Impulse.kr(1/t1)),0.2,0.2,t3*3),
				CombC.ar(SinOsc.ar(rrand(10.0,100.0)) * EnvGen.kr(Env.perc(t4/2,t4/2), Impulse.kr(1/t1)),0.2,0.2,t4*3)
			]),rrand(2000.0,13000.0),0.01,100),rrand(10.0,100.0),0.01)
		 ,v1,v2,v3)
		 ,100,6.0,q1),1000,6.0,q2),5000,6.0,q3),10000,6.0,q4)
		 ,(1.33/0.999)*vol,0.1))
	}
}
