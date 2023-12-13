s.boot;
s.reboot;
CmdPeriod.run;
MIDIIn.disconnectAll;
currentEnvironment;
currentEnvironment.clear;
Server.default.options.outDevice_("MacBook Pro Speakers");

// create buffers
(
~stefani = Buffer.read(s, "stefani.wav".resolveRelative);
~stefani_left = Buffer.readChannel(s, "stefani.wav".resolveRelative, channels: [0]);
~synths = Array.newClear(4);
)

// GrainBuf SynthDef and Envelopes
(
var spike, sqr, fall, rise, curve;

spike = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
sqr = Env(levels: [0, 1, 1, 0], times: [0.001, 0.25, 0.001], curve: [-1, 0, -1]);
fall = Env(levels: [0, 1, 0.1, 0], times: [0.0001, 0.01], curve: [-0.001, 0, 3]);
rise = Env(levels: [0, 1, 1, 0], times: [0.01, 0.0001], curve: [-3, 0, 0.0001]);
curve = Env([0, 1, 0], [1, 1], \sin, 1);

~spikeEnv = Buffer.sendCollection(s, spike.discretize, 1);
~sqrEnv = Buffer.sendCollection(s, sqr.discretize, 1);
~fallEnv = Buffer.sendCollection(s, fall.discretize, 1);
~riseEnv = Buffer.sendCollection(s, rise.discretize, 1);
~curveEnv = Buffer.sendCollection(s, curve.discretize, 1);

SynthDef(\buf_0, { | gate = 1, amp = 1, sndbuf, panCenter = 0, envbuf |
	var pan;
	pan = TRand.kr()

	// 2 channels, Impulse.kr(trigger rate in Hz), grain length in sec, buffer, playback speed, start pos, interpolation
	// method, panning, select grain envelope
	Out.ar(0, GrainBuf.ar(2, Impulse.kr(10), 0.1, sndbuf, 1, 0.01, 2, panCenter, envbuf) * amp);
}).add;
)

///////////////////////// get MIDI in //////////////////////////////////////////
(
MIDIClient.init;
MIDIIn.connectAll;

// print MIDI messages
MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		[cvalue,ctlnum,channel].postln;
	}
);
)

/////////////////////// start or stop buffer 0 ///////////////////////////////////
(
~buff0_exists = 0;

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127 && ~buff0_exists == 0) {
			["Buffer 0 start"].postln;
			~buff0_exists = 1;

			~synths[0] = Synth.new(\buf_0, [\sndbuf, ~stefani_left, \envbuf, ~curveEnv, \amp, ~amp0]);
		};
	}, ccNum: 0, chan: 1
);

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 stop"].postln;
			~buff0_exists = 0;

			~synths[0].free;
		};
	}, ccNum: 3, chan: 1
);
)

////////////////////// set envelope for buffer 0 //////////////////////////////////
(
MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => SqrEnv"].postln;

			~synths[0].set(\envbuf, ~sqrEnv);
		}
	}, ccNum: 4, chan: 1
);

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => FallEnv"].postln;

			~synths[0].set(\envbuf, ~fallEnv);
		}
	}, ccNum: 5, chan: 1
);

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => RiseEnv"].postln;

			~synths[0].set(\envbuf, ~riseEnv);
		}
	}, ccNum: 6, chan: 1
);

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => SpikeEnv"].postln;

			~synths[0].set(\envbuf, ~spikeEnv);
		}
	}, ccNum: 7, chan: 1
);

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => CurveEnv"].postln;

			~synths[0].set(\envbuf, ~curveEnv);
		}
	}, ccNum: 2, chan: 1
);
)

///////////////////////////////// mixing: amp, panning ///////////////////////
(
MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~amp0 = cvalue.linlin(1, 127, 0.001, 1);
			~synths[0].set(\amp, ~amp0);
		}
	}, ccNum: 15, chan: 0
);

MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~pan0 = cvalue.linlin(1, 127, -1, 1);
			~synths[0].set(\panCenter, ~pan0);
		}
	}, ccNum: 8, chan: 0
);

// if pan knob pressed, set pan back to 0
MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			if (cvalue == 127) {
				~synths[0].set(\panCenter, 0);
			}
		}
	}, ccNum: 8, chan: 1
);

// randomize panning
MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		var currentPan;

		if (~buff0_exists == 1) {
			~panRand0 = cvalue.linlin(1, 127, 0.001, 1);
		}
	}, ccNum: 12, chan: 0
);
)