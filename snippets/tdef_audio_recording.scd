
// Tdef audio recording:

Tdef(\a, {
	4.do( { var alpha; // 4 archives
		alpha = Date.getDate.format("-%Y-%m-%d_%H_%M_%S").postln;
		0.6.wait;
		Server.default.recHeaderFormat = "WAV";
		0.6.wait;
		Server.default.recChannels = 4;
		0.6.wait;
		Server.default.prepareForRecord("Title"++alpha++".wav");
		0.6.wait;
		Server.default.record;
		~a.play;
		~a.fadeTime = 50;
		0.3.wait;
		~a = { Pan2.ar(SinOsc.ar(Rand(100,400)),0)};
		30.wait; // 30''
		~a.end(10);
		10.wait;
		~a.clear;
		Server.default.stopRecording;
	})
}).play;