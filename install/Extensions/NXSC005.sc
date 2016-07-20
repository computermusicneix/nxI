NXSC005 {
	*ar {
		arg vol=0.0,q1=6,q2=0,q3=0,q4=6,v1=0.0,v2=0.0,v3=0.0;
		var
		freq = [rrand(1.0,50.0),rrand(1.0,50.0)],
		temp = rrand(0.05,0.5),
		ffreq1 = [rrand(100.0,500.0),rrand(5000.0,10000.0)],
		ffreq2 = [rrand(100.0,500.0),rrand(5000.0,10000.0)];
"
~nxsc005.play(0);
~nxsc005.fadeTime = 100;

(
~nxsc005 = {
	var
	freq = [rrand(1.0,50.0),rrand(1.0,50.0)],
	temp = rrand(0.05,0.5),
	ffreq1 = [rrand(100.0,500.0),rrand(5000.0,10000.0)],
	ffreq2 = [rrand(100.0,500.0),rrand(5000.0,10000.0)];
	LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(RHPF.ar(
			BPF.ar(BPF.ar(
			BPF.ar(BPF.ar(
	  Pulse.ar(
	  Demand.kr(Impulse.kr(temp),0,Dseq([freq[0],freq[1]],inf)),0.5)
				,ffreq1[0],2,1),ffreq1[0],2,1)
				,ffreq2[0],2,1),ffreq2[0],2,1)
				,ffreq1[0],1),ffreq2[0],1)
		,0,0,0)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(0.5/0.999)*1,0.1))
         };
)

~nxsc005.end(10);
~nxsc005 = nil;
".postln;
		^LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(RHPF.ar(
			BPF.ar(BPF.ar(
			BPF.ar(BPF.ar(
	  Pulse.ar(
	  Demand.kr(Impulse.kr(temp),0,Dseq([freq[0],freq[1]],inf)),0.5)
				,ffreq1[0],2,1),ffreq1[0],2,1)
				,ffreq2[0],2,1),ffreq2[0],2,1)
				,ffreq1[0],1),ffreq2[0],1)
    	 ,v1,v2,v3)
		 ,100,6.0,q1),1000,6.0,q2),5000,6.0,q3),10000,6.0,q4)
		 ,(0.5/0.999)*vol,0.1))
	}
	*post{
"
~nxsc005.play(0);
~nxsc005.fadeTime = 100;

(
~nxsc005 = {
	var
	freq = [rrand(1.0,50.0),rrand(1.0,50.0)],
	temp = rrand(0.05,0.5),
	ffreq1 = [rrand(100.0,500.0),rrand(5000.0,10000.0)],
	ffreq2 = [rrand(100.0,500.0),rrand(5000.0,10000.0)];
	LeakDC.ar(Normalizer.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
			RHPF.ar(RHPF.ar(
			BPF.ar(BPF.ar(
			BPF.ar(BPF.ar(
	  Pulse.ar(
	  Demand.kr(Impulse.kr(temp),0,Dseq([freq[0],freq[1]],inf)),0.5)
				,ffreq1[0],2,1),ffreq1[0],2,1)
				,ffreq2[0],2,1),ffreq2[0],2,1)
				,ffreq1[0],1),ffreq2[0],1)
		,0,0,0)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(0.5/0.999)*1,0.1))
         };
)

~nxsc005.end(10);
~nxsc005 = nil;
".postln;
	}
}