
// Test a class for send OSC to processing

// Send OSC? for use with processing oscP5sendReceive example

b = NetAddr.new("127.0.0.1", 12000);

b.sendMsg("/hello", "there");

// Without Class:

b = NetAddr.new("127.0.0.1", 12000);

(
SynthDef(\example,{ |freq, t_trig|
	Out.ar(0, SinOsc.ar(freq) * EnvGen.kr(Env.perc(), t_trig))
}).add;
)

a = Synth(\example);

(
Tdef(\a, {
	loop({ var freq;
		freq = rrand(200,300);
		b.sendMsg("/freq", freq);
		a.set(\freq, freq, \t_trig, 1);
		0.5.wait
	})
}).play;
)

Tdef(\a).stop; a.set(\t_trig, 0);

// Class NXExample.sc

// Control example

NXExample {

	classvar alpha;

	*start{
		alpha = Task.new({ loop({rrand(0.0,1.0).postln; 1.wait })}).start;
	}
	*stop{
		alpha.stop;
	}
}

NXExample.start;
NXExample.stop;

// Change parameters?

NXExample {

	classvar alpha , <>time;

	*start{ var message;
		time = rrand(0.1,1.0);
		alpha = Task.new({ loop({rrand(0.0,1.0).postln; time.wait })}).start;
		message = "time: " ++ time;
		message.postln;
	}
	*stop{
		alpha.stop; alpha.removedFromScheduler;
	}
	*setTime_{ arg beta;
		time = beta;
	}
}

NXExample.start;
NXExample.setTime_(0.1);
NXExample.stop;

a = NXExample.start;
a.setTime_(0.1);
a.stop; a.free;

// With audio

NXExample {

	classvar alpha , <>time, synth;

	*start{ var message;
		SynthDef(\example,{ |freq, t_trig|
				Out.ar(0, SinOsc.ar(freq) * EnvGen.kr(Env.perc(), t_trig))
		}).load(Server.default);
		synth = Synth(\example);
		time = rrand(0.1,1.0);
		alpha = Task.new({ loop({synth.set(\freq,rrand(200.0,400.0), \t_trig, 1); time.wait })}).start;
		message = "time: " ++ time;
		message.postln;
	}
	*stop{
		alpha.stop; alpha.removedFromScheduler; synth.free;
	}
	*setTime_{ arg beta;
		time = beta;
	}
}

NXExample.start;
NXExample.setTime_(0.1);
NXExample.stop;

// Audio + OSC / for use with processing sketch NXExample.pde

b = NetAddr.new("127.0.0.1", 12000);
b.sendMsg("/freq", 200);

NXExample {

	classvar alpha , <>time, synth, net;

	*start{ var message;
		net = NetAddr.new("127.0.0.1", 12000);
		SynthDef(\example,{ |freq, t_trig|
				Out.ar(0, SinOsc.ar(freq) * EnvGen.kr(Env.perc(), t_trig))
		}).load(Server.default);
		synth = Synth(\example);
		time = rrand(0.1,1.0);
		alpha = Task.new({ loop({ var freq;
			freq = rrand(200,400);
			synth.set(\freq,freq, \t_trig, 1);
			net.sendMsg("/freq", freq);
			time.wait })}).start;
		message = "time: " ++ time;
		message.postln;
	}
	*stop{
		alpha.stop;
		alpha.removedFromScheduler;
		synth.free;
		net.sendMsg("/freq", 0);
		net.disconnect;
	}
	*setTime_{ arg beta;
		time = beta;
	}
}

NXExample.start;
NXExample.setTime_(0.1);
NXExample.stop;