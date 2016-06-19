// Simple inlet from audiocard:

~inlet.play;

~inlet = { SoundIn.ar(0)};

~inlet.end(0);

// Record inlet on buffer:

b = Buffer.alloc(s, 44100 * 4, 1);

~a.play;
~a.vol = 0;

~a = { Limiter.ar(RecordBuf.ar(SoundIn.ar(0),b, doneAction:2, loop:0),1) };