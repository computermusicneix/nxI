// Audio in Looper
// Alsamixer: <f4> capture 50+-

b = Buffer.alloc(s, 44100 * 0.5, 2);

~a.play; ~b.play;
~a.vol = 0;

~a = { Limiter.ar(RecordBuf.ar(SoundIn.ar([0,1]),b, doneAction:2, loop:0),1) };

~b = { Limiter.ar(Pan2.ar(PlayBuf.ar(2,b,1,1,0,1),0),0.05) };

c = Buffer.alloc(s, 44100 * 0.25, 2);

~c.play; ~d.play;
~c.vol = 0;

~c = { Limiter.ar(RecordBuf.ar(SoundIn.ar([0,1]),c, doneAction:2, loop:0),1) };

~d = { Limiter.ar(Pan2.ar(PlayBuf.ar(2,c,1,1,0,1),0),0.05) }



~b.end(1);

~a.clear; ~b.clear; b.free; ~c.clear; ~d.clear; c.free;
