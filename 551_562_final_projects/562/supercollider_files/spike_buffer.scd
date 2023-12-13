s.boot;
s.reboot;
s.freeAll;
CmdPeriod.run;
MIDIClient.restart;
currentEnvironment;
currentEnvironment.clear;
Server.default.options.outDevice_("MacBook Pro Speakers");

// create global buffers
(
~stefani = Buffer.read(s, "stefani.wav".resolveRelative);
~stefani_left = Buffer.readChannel(s, "stefani.wav".resolveRelative, channels: [0]);
)

// create a GrainBuf
(
var winenv;

// an impulse-like envelope
winenv = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
z = Buffer.sendCollection(s, winenv.discretize, 1);

SynthDef(\buf_grain_test, { | out, gate = 1, amp = 1, sndbuf, envbuf |
    var pan, env, freqdev;
    // use mouse x to control panning
    pan = MouseX.kr(-1, 1);
    env = EnvGen.kr(
        Env([0, 1, 0], [1, 1], \sin, 1),
        gate,
        levelScale: amp,
        doneAction: Done.freeSelf);

    Out.ar(out,
        GrainBuf.ar(2, Impulse.kr(10), 0.1, sndbuf, LFNoise1.kr.range(0.5, 2),
            LFNoise2.kr(0.1).range(0, 1), 2, pan, envbuf) * env)
}).add;
)

// use built-in env
~x = Synth(\buf_grain_test, [\sndbuf, ~stefani_left, \envbuf, -1, \amp, 1])

// switch to the custom env
~x.set(\envbuf, z);
~x.set(\envbuf, -1);

~x.free;

// create more envelopes
~sqrEnv = Env(levels: [0, 1, 1, 0], times: [0.001, 0.25, 0.001], curve: [-1, 0, -1]);
y = Buffer.sendCollection(s, ~sqrEnv.discretize, 1);
~x.set(\envbuf, y);

~fallEnv = Env(levels: [0, 1, 0.1, 0], times: [0.0001, 0.01], curve: [-0.001, 0, 3]);
w = Buffer.sendCollection(s, ~fallEnv.discretize, 1);
~x.set(\envbuf, w);

~riseEnv = Env(levels: [0, 1, 1, 0], times: [0.01, 0.0001], curve: [-3, 0, 0.0001]);
v = Buffer.sendCollection(s, ~riseEnv.discretize, 1);
~x.set(\envbuf, v);

y.plot;
z.plot;
w.plot;
v.plot;
Env([0, 1, 0], [1, 1], \sin, 1).plot;

// change a parameter of GrainBuf in real time

// get MIDI in
(
MIDIClient.init;
MIDIIn.connectAll;
~synths = Array.newClear(4);
~amp0 = 0.5;

// print MIDI messages
MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		[cvalue,ctlnum,channel].postln;
	}
);
)

(
// on click of knob 1, start synth0
MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 start"].postln;

			~synths[0] = Synth.new(\buf_grain_test, [\sndbuf, ~stefani_left, \envbuf, -1, \amp, ~amp0.linexp(0, 127, 0, 1)]);
			/*~synths[0] = Synth(\buf_grain_test, [\sndbuf, ~stefani_left, \envbuf, z]);*/
		};

		/*if (cvalue == 0) {
			["Buffer 0 stop"].postln;

			~synths[0].free;
		};*/
	}, ccNum: 0, chan: 1
);

~synths[0];

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		~amp0 = cvalue;

		~synths.do{arg synth; synth.set(\amp, cvalue.linexp(1, 127, 0.001, 0.5))};
	}, ccNum: 0, chan: 0
);

)

MIDIIn.disconnectAll;