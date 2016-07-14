
NXSC003.post;

~a.play(0);

(
~a = { 	var change = rrand(0.1,1.0), dron = rrand(20.0,100.0);
	    LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			CombC.ar(
			RLPF.ar(
			RHPF.ar(
		Pulse.ar(
				Demand.kr(Impulse.kr(change),0,Drand(
					[rrand(1.0,10.0),dron,
					 rrand(1.0,10.0),dron,
					 rrand(1.0,10.0),dron],inf))
			   ,Demand.kr(Impulse.kr(change),0,Drand(
					[rrand(0.1,0.9),rrand(0.1,0.9),
					 rrand(0.1,0.9),rrand(0.1,0.9),
					 rrand(0.1,0.9),rrand(0.1,0.9)],inf)),
			    Demand.kr(Impulse.kr(change),0,Drand(
					[1,0,1,0,1,0],inf))),
				Demand.kr(Impulse.kr(change),0,Drand(
					[rrand(5000.0,15000.0),dron*10,
					 rrand(5000.0,15000.0),dron*10,
					 rrand(5000.0,15000.0),dron*10],inf)),0.1)
				Demand.kr(Impulse.kr(change),0,Drand(
					[rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10],inf)),0.1),
				0.2,0.2,change*10)
		,0.0,0.0,0.0)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(1.25/0.999)*1,0.1))
}
)