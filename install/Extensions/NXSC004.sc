NXSC004 {
	*ar {
		arg vol=0.0,q1=6,q2=0,q3=0,q4=6,v1=0.0,v2=0.0,v3=0.0;
		var change = rrand(25.0,300.0), dron = rrand(20.0,1000.0);
"
~nxsc004.play(0);
~nxsc004.fadeTime = 100;

(
~nxsc004 = { 	var change = rrand(25.0,300.0), dron = rrand(20.0,1000.0);
	    LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
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
					 rrand(5000.0,15000.0),dron*10],inf)),0.1),
				Demand.kr(Impulse.kr(change),0,Drand(
					[rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10],inf)),0.1)
		,0.0,0.0,0.0)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(0.9/0.999)*1,0.1))
}
)

~nxsc004.end(1);
~nxsc004 = nil;
".postln;
		^LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
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
					 rrand(5000.0,15000.0),dron*10],inf)),0.1),
				Demand.kr(Impulse.kr(change),0,Drand(
					[rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10],inf)),0.1)
		 ,v1,v2,v3)
		 ,100,6.0,q1),1000,6.0,q2),5000,6.0,q3),10000,6.0,q4)
		 ,(1.27/0.999)*vol,0.1))
	}
	*post{
"
~nxsc004.play(0);
~nxsc004.fadeTime = 100;

(
~nxsc004 = { 	var change = rrand(25.0,300.0), dron = rrand(20.0,1000.0);
	    LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
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
					 rrand(5000.0,15000.0),dron*10],inf)),0.1),
				Demand.kr(Impulse.kr(change),0,Drand(
					[rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10,
					 rrand(50.0,1500.0),dron*10],inf)),0.1)
		,0.0,0.0,0.0)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(0.9/0.999)*1,0.1))
}
)

~nxsc004.end(1);
~nxsc004 = nil;
".postln;
	}
}