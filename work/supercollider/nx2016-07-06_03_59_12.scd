
// nx2016-07-06_03_59_12

NXSC003 {
	*ar {
		arg vol=0.0,q1=6,q2=0,q3=0,q4=6,v1=0.0,v2=0.0,v3=0.0;
		var scale,t,fund,freq,vibdepth,ffreq,cutoff;
"
~nxSC003.play(0);
~nxSC003.fadeTime = 100;

(
~nxSC003 = { var scale,t,fund,freq,vibdepth,ffreq,cutoff;
	scale = [0,3,4,5];
    t = [16,32].choose;
	fund = 16+[0,3,4,5,6,7].choose;
	freq = (scale.choose+fund+(12*(0..3).choose)).midicps;
    vibdepth = (90..500).choose.reciprocal;
    cutoff = freq * (1.1,1.2..4).choose;
    ffreq = max( EnvGen.kr(Env.linen(300.0.rand/t,300.0.rand/t,300.0.rand/t))*freq*12,cutoff)+100;
	LeakDC.ar(Normalizer.ar(
				BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
	RLPF.ar(
		MoogFF.ar(
			Pulse.ar( [
				(SinOsc.kr(t/(1..10).choose).range(vibdepth.neg,vibdepth)+1) * Line.kr(freq,freq*(0.99,0.991..1.01).choose,t)
				,freq*(1+LFNoise0.kr(t,0.02,1))
	])
		,ffreq,LFNoise2.kr(1/t,1.4,1.5)).tanh
		,1e4,0.9).tanh
		 ,0.8,0.8,0.8)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ,(0.5/0.999)*1.0,0.1))
};
)

~nxSC003.end(1);
~nxSC003 = nil;
".postln;
		scale = [0,3,4,5];
		t = [16,32].choose;
		fund = 16+[0,3,4,5,6,7].choose;
		freq = (scale.choose+fund+(12*(0..3).choose)).midicps;
		vibdepth = (90..500).choose.reciprocal;
		cutoff = freq * (1.1,1.2..4).choose;
		ffreq = max( EnvGen.kr(Env.linen(300.0.rand/t,300.0.rand/t,300.0.rand/t))*freq*12,cutoff)+100;
		LeakDC.ar(Normalizer.ar(
				BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
					RLPF.ar(
						MoogFF.ar(
							Pulse.ar( [
								(SinOsc.kr(t/(1..10).choose).range(vibdepth.neg,vibdepth)+1) * Line.kr(freq,freq*(0.99,0.991..1.01).choose,t)
								,freq*(1+LFNoise0.kr(t,0.02,1))
							])
							,ffreq,LFNoise2.kr(1/t,1.4,1.5)).tanh
						,1e4,0.9).tanh
					,v1,v2,v3)
		 ,100,6.0,q1),1000,6.0,q2),5000,6.0,q3),10000,6.0,q4)
		 ,(0.5/0.999)*vol,0.1))
	}
}

// try

~a.play(0);

~a = { NXSC003.ar(1,12,0,0,0,0.5,0.5,0.5) };

~nxSC003.play(0);
~nxSC003.fadeTime = 100;

(
~a = { var scale,t,fund,freq,vibdepth,ffreq,cutoff;
	scale = [0,3,4,5];
    t = [6,12].choose;
	fund = 16+[0,3,4,5,6,7].choose;
	freq = (scale.choose+fund+(6*(0..3).choose)).midicps;
    vibdepth = (90..500).choose.reciprocal;
    cutoff = freq * (1.1,1.2..4).choose;
    ffreq = max( EnvGen.kr(Env.linen(300.0.rand/t,300.0.rand/t,300.0.rand/t))*freq*12,cutoff)+100;
	LeakDC.ar(Normalizer.ar(
				BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
	RLPF.ar(
		MoogFF.ar(
			Pulse.ar( [
				(SinOsc.kr(t/(1..10).choose).range(vibdepth.neg,vibdepth)+1) * Line.kr(freq,freq*(0.99,0.991..1.01).choose,t)
				,freq*(1+LFNoise0.kr(t,0.02,1))
	])
		,ffreq,LFNoise2.kr(1/t,1.4,1.5)).tanh
		,1e4,0.9).tanh
		 ,0.8,0.8,0.8)
		 ,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		 ,(0.5/0.999)*1.0,0.1))
};
)

///////////////////////////////////////////////////

NX002 - NXSC003

NXSC003 {
	*ar {
		arg vol=0.0,q1=6,q2=0,q3=0,q4=6,v1=0.1,v2=0.1,v3=0.1;
		var alpha,beta,gamma;
		alpha = rrand(1000,3000);
		beta = rrand(100,440);
		gamma = rrand(100,440);
"
~nxsc003.play(0);
~nxsc003.fadeTime = 100;

(
~nx003 = {  var alpha,beta,gamma;
			alpha = rrand(1000,3000);
			beta = rrand(100,440);
			gamma = rrand(100,440);
			LeakDC.ar(Normalizer.ar(
				BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
					HPF.ar(LPF.ar(
					RHPF.ar(
                    Saw.ar(TRand.kr(alpha,alpha+10, Impulse.kr(rrand(10,100))))+
					CombC.ar(Saw.ar(TRand.kr(beta,beta+1000, Impulse.kr(rrand(10,100))))
                    ,1,1,0.1),17000,0.01)+
					Saw.ar(TRand.kr(alpha,alpha+100, Impulse.kr(rrand(10,100))))+
					Formant.ar(TRand.kr(gamma,gamma+
						TRand.kr(1,100, Impulse.kr(rrand(0.1,1)))
						, Impulse.kr(rrand(10,100))))
						,rrand(100,1000),0.1),rrand(1000,10000),0.1)
			 ,rrand(0.1,0.7),rrand(0.1,0.7),rrand(0.1,0.7))
			,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		,(1.25/0.999)*1,0.1))
         };
)

~nxsc003.end(1);
~nxsc003 = nil;
".postln;
		^LeakDC.ar(Normalizer.ar(
			BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
					HPF.ar(LPF.ar(
					RHPF.ar(
                    Saw.ar(TRand.kr(alpha,alpha+10, Impulse.kr(rrand(10,100))))+
					CombC.ar(Saw.ar(TRand.kr(beta,beta+1000, Impulse.kr(rrand(10,100))))
                    ,1,1,0.1),17000,0.01)+
					Saw.ar(TRand.kr(alpha,alpha+100, Impulse.kr(rrand(10,100))))+
					Formant.ar(TRand.kr(gamma,gamma+
						TRand.kr(1,100, Impulse.kr(rrand(0.1,1)))
						, Impulse.kr(rrand(10,100))))
						,rrand(100,1000),0.1),rrand(1000,10000),0.1)
		 ,v1,v2,v3)
		 ,100,6.0,q1),1000,6.0,q2),5000,6.0,q3),10000,6.0,q4)
		 ,(1.27/0.999)*vol,0.1))
	}
}

// try2

~a.play(0);

~a = { NXSC003.ar(1,-20,-20,-20,0,1,1,1) };

~a.end(33);