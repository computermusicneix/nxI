
// Get and Set in Audio Pseudo Ugens.

// Copy this class on a fil named NXTry.sc and copy in your extensions folder.

NXTry {
	classvar <>alpha;
	*setA{
		alpha = rrand(50,100);
	}
	*setB{
		alpha = rrand(100,300);
	}
	*ar{
		"~nxtry = SinOsc.ar(alpha);".postln;
		^SinOsc.ar(alpha)
	}
}

// Init the variables

a = NXTry.setA;

a.alpha;

// Init the audio:

~a.play(0);

~a = { NXTry.ar()};

// Every init is random:

a = NXTry.setA;

a.alpha;

~a = { NXTry.ar()};

// You can use the variables:

~nxtry.play(1);

~nxtry = {SinOsc.ar(a.alpha*2)};

// Or change...

a = NXTry.setB;

a.alpha;

~a = { NXTry.ar()};

// Or define

a.alpha_(440);

~a = { NXTry.ar()};

// End

~a.end(0.5); ~nxtry.end(0.5);
a.free; ~a.clear; ~nxtry.clear;



