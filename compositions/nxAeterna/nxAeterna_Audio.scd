
// nxAeterna (Only Audio version)

NXRec4.a;
NXRec4.b("nxAeterna");

// Algorithm

a = Array.fib(6,rrand(2.0,20.0),rrand(5.0,50.0));

// Audio generators

~a.play(0);
~a.fadeTime = rrand(50.0,200.0);

(
~a = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
)

~b.play(1);
~b.fadeTime = rrand(50.0,200.0);

(
~b = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
)

~c.play(2);
~c.fadeTime = rrand(50.0,200.0);

(
~c = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
)

~d.play(3);
~d.fadeTime = rrand(50.0,200.0);

(
~d = { var freq = a[5];
	Normalizer.ar(FreeVerb.ar(
		Pulse.ar(freq,rrand(0.1,0.9)) +
		Pulse.ar(freq*2,rrand(0.1,0.9),0.25) +
		Pulse.ar(freq/2,rrand(0.1,0.9),1.25)
		,rrand(0.5,1.0),rrand(0.5,1.0),rrand(0.5,1.0))
		,0.5,0.01)
}
)

~a.end(60);
~b.end(100);
~c.end(60);
~d.end(60);

~a = nil;
~b = nil;
~c = nil;
~d = nil;
a = nil;

NXRec4.c;
