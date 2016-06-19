
// Semideterministic presets on SCSynth size:

~a.play;

~a = { var preset,select;
	preset = [
		[80,-1],
		[300,0],
		[500,1]];
	select = rrand(0,2);
	Pan2.ar(SinOsc.ar(preset[select][0]),preset[select][1])};

~a = nil;