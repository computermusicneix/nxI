
// nx2016-06-25_00_17_23

// work for nxsc002

~nxsc002.play(0);

(
~nxsc002 = {
	    LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(
			Ringz.ar(WhiteNoise.ar(),
				Demand.kr(Impulse.kr(rrand(0.01,1)),0,Dseq([rrand(10,1000),rrand(10,1000),rrand(10,1000)],inf))
			)
			* EnvGen.kr(Env.perc(0.001,0.001),Impulse.kr(rrand(10,100)))
				,20000,0.001,100)
			+
			RLPF.ar(
			Ringz.ar(WhiteNoise.ar(),
				Demand.kr(Impulse.kr(rrand(0.01,1)),0,Dseq([rrand(10,1000),rrand(10,1000),rrand(10,1000)],inf))
			)
			* EnvGen.kr(Env.perc(0.001,0.001),Impulse.kr(rrand(10,100)))
				,1000,10)
		,0.1,0.1,0.1)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(1.33/0.999)*1.0,0.1))
}
)

~nxsc002.end(3);
~nxsc002 = nil;

// Class

NXSC002 {
	*ar {
		arg vol=0.0,q1=6,q2=0,q3=0,q4=6,v1=0.1,v2=0.1,v3=0.1;
"

~nxsc002.play(0);

(
~nxsc002 = {
	    LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(
			Ringz.ar(WhiteNoise.ar(),
				Demand.kr(Impulse.kr(rrand(0.01,1)),0,Dseq([rrand(10,1000),rrand(10,1000),rrand(10,1000)],inf))
			)
			* EnvGen.kr(Env.perc(0.001,0.001),Impulse.kr(rrand(10,100)))
				,20000,0.001,100)
			+
			RLPF.ar(
			Ringz.ar(WhiteNoise.ar(),
				Demand.kr(Impulse.kr(rrand(0.01,1)),0,Dseq([rrand(10,1000),rrand(10,1000),rrand(10,1000)],inf))
			)
			* EnvGen.kr(Env.perc(0.001,0.001),Impulse.kr(rrand(10,100)))
				,1000,10)
		,0.1,0.1,0.1)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(1.33/0.999)*1.0,0.1))
}
)

~nxsc002.end(3);
~nxsc002 = nil;
".postln;
		^LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(
			Ringz.ar(WhiteNoise.ar(),
				Demand.kr(Impulse.kr(rrand(0.01,1)),0,Dseq([rrand(10,1000),rrand(10,1000),rrand(10,1000)],inf))
			)
			* EnvGen.kr(Env.perc(0.001,0.001),Impulse.kr(rrand(10,100)))
				,20000,0.001,100)
			+
			RLPF.ar(
			Ringz.ar(WhiteNoise.ar(),
				Demand.kr(Impulse.kr(rrand(0.01,1)),0,Dseq([rrand(10,1000),rrand(10,1000),rrand(10,1000)],inf))
			)
			* EnvGen.kr(Env.perc(0.001,0.001),Impulse.kr(rrand(10,100)))
				,1000,10)
		 ,v1,v2,v3)
		 ,100,6.0,q1),1000,6.0,q2),5000,6.0,q3),10000,6.0,q4)
		 ,(1.33/0.999)*vol,0.1))
	}
}

// try class and program visuals

~a.play(0);

~a = { NXSC001.ar(1,[-6,6,0,-12,12].choose,[-6,6,0,-12,12].choose,[-6,6,0,-12,12].choose,[-6,6,0,-12,12].choose,rrand(0.0,1.0),rrand(0.0,1.0),rrand(0.0,1.0)) };
