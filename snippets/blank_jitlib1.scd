~a.play;
~a.fadeTime = 0;

(
~a = {
	Pan2.ar(LeakDC.ar(
		BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(BPeakEQ.ar(FreeVerb.ar(
		// code here
		* (1.0/0.999)*1
		,0.0,0.0,0.0)
		,100,6.0,6),1000,6.0,0),5000,6.0,0),10000,6.0,6)
		),0)
};
)

~a.end(0);
~a = nil;
