
// Live Sampling


// Simple inlet

~a.play;
~a = { SoundIn.ar([0,1])};

~a = nil;

// Record a sample and loop:

// Record 4 seconds

b = Buffer.alloc(s, 44100 * 1.0, 2);

~a.play; ~b.play;
~a.vol = 0;

~a = { Limiter.ar(RecordBuf.ar(SoundIn.ar([0,1]),b, doneAction:2, loop:0),1) };

~b = { Limiter.ar(Pan2.ar(PlayBuf.ar(2,b,1,1,0,1),0),0.05) }

~b.end(1);

~a.clear; ~b.clear; b.free;