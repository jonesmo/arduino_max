s.boot;
s.reboot;

currentEnvironment;
currentEnvironment.clear;
Server.default.options.outDevice_("MacBook Pro Speakers");
s.options.outDevice_("External Headphones");

// create buffers
(
~synths = Array.newClear(4);

~buf0 = Buffer.readChannel(s, "stefani.wav".resolveRelative, channels: [0]);
)

// GrainBuf SynthDef and Envelopes
(
var spike, sqr, fall, rise, curve;
~buf0_length = ~buf0.numFrames;

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

~grainSynthDef = SynthDef(\buf_0, {
	| triggerrate = 10, grainlength = 0.001, grainlengthrand = 0, sndbuf, startpos, startposrand = 0,
	pan = 0, panrand = 0, envbuf, gate = 1, amp = 1 |

	var pan_min, pan_max, grainlength_max, startpos_min, startpos_max;

	// pan randomness
	pan_min = pan - panrand;
	pan_max = pan + panrand;
	pan = TRand.kr(pan_min, pan_max, Dust.kr(100));

	// grain length randomness
	grainlength_max = grainlength + grainlengthrand;
	grainlength = TRand.kr(grainlength, grainlength_max, Dust.kr(100));

	// start position randomness
	startpos_min = startpos - startposrand;
	startpos_max = startpos + startposrand;
	startpos = TRand.kr(startpos_min, startpos_max, Dust.kr(100));

	Out.ar(0, GrainBuf.ar(2, Impulse.kr(triggerrate), grainlength, sndbuf, 1, startpos, 2, pan, envbuf) * amp);
}).add;
)

///////////////////////// get MIDI in //////////////////////////////////////////
(
MIDIClient.init;
MIDIIn.connectAll;

// print MIDI messages
~midiPrint = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		[cvalue,ctlnum,channel].postln;
	}
);
)

/////////////////////// start or stop buffer 0 ///////////////////////////////////
(
~buff0_exists = 0;

~midiStart0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127 && ~buff0_exists == 0) {
			["Buffer 0 start"].postln;

			~synths[0] = Synth.new(\buf_0, [\triggerrate, ~triggerrate0,
				\grainlength, ~grainlength0, \grainlengthrand, ~grainlength0_rand,
				\sndbuf, ~buf0,
				\startpos, ~startpos0, \startposrand, ~startpos0_rand,
				\pan, ~pan0, \panrand, ~pan0_rand,
				\envbuf, ~curveEnv,
				\amp, ~amp0]);

			~buff0_exists = 1;
		};
	}, ccNum: 0, chan: 1
);

~midiStop0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 stop"].postln;

			~synths[0].free;
			~buff0_exists = 0;
		};
	}, ccNum: 1, chan: 1
);
)

////////////////////// set envelope for buffer 0 //////////////////////////////////
(
~midiSqrEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => SqrEnv"].postln;

			~synths[0].set(\envbuf, ~sqrEnv);
		}
	}, ccNum: 4, chan: 1
);

~midiFallEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => FallEnv"].postln;

			~synths[0].set(\envbuf, ~fallEnv);
		}
	}, ccNum: 5, chan: 1
);

~midiRiseEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => RiseEnv"].postln;

			~synths[0].set(\envbuf, ~riseEnv);
		}
	}, ccNum: 6, chan: 1
);

~midiSpikeEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => SpikeEnv"].postln;

			~synths[0].set(\envbuf, ~spikeEnv);
		}
	}, ccNum: 7, chan: 1
);

~midiCurveEnv0 = MIDIFunc.cc(
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
// amp
~midiAmp0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~amp0 = cvalue.linlin(1, 127, 0.001, 1);
			~synths[0].set(\amp, ~amp0);
		}
	}, ccNum: 44, chan: 0
);

// pan
~midiPan0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~pan0 = cvalue.linlin(1, 127, -1, 1);
			~synths[0].set(\pan, ~pan0);
		}
	}, ccNum: 3, chan: 0
);

// if pan knob pressed, set pan back to 0
~midiResetPan0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			if (cvalue == 127) {
				~synths[0].set(\pan, 0);
			}
		}
	}, ccNum: 3, chan: 1
);

// pan randomness
~midiPan0_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~pan0_rand = cvalue.linlin(1, 127, 0.01, 1.0);

			if (cvalue > 0) {
				~synths[0].set(\panrand, ~pan0_rand);
			}
			{
				~synths[0].set(\panrand, 0);
			}
		}
	}, ccNum: 7, chan: 0
);
)

/////////////////////////////// grain attributes: grain size, start pos, rate of fire, speed ///////////
(
~midiGrainLength0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		var shortest, longest;

		if (~buff0_exists == 1) {
			shortest = 5.0 / ~buf0.sampleRate;
			longest = 0.4;

			~grainlength0 = cvalue.linexp(1, 127, shortest, longest);
			~synths[0].set(\grainlength, ~grainlength0);
		}
	}, ccNum: 0, chan: 0
);

~midiGrainLength0_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		var shortest_deviation, longest_deviation;

		if (~buff0_exists == 1) {
			shortest_deviation = 5.0 / ~buf0.sampleRate;
			longest_deviation = ~grainlength0 * 2.0;
			longest_deviation.postln;

			~grainlength0_rand = cvalue.linlin(1, 127, shortest_deviation, longest_deviation);

			if (cvalue > 0) {
				~synths[0].set(\grainlengthrand, ~grainlength0_rand);
			}
			{
				~synths[0].set(\grainlengthrand, 0);
			}
		}
	}, ccNum: 4, chan: 0
);

~midiStartPos0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~startpos0 = cvalue.linlin(1, 127, 0.05, 0.95);
			~synths[0].set(\startpos, ~startpos0);
		}
	}, ccNum: 1, chan: 0
);

~midiStartPos0_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~startpos0_rand = cvalue.linexp(1, 127, 0.001, 5.0);

			if (cvalue > 0) {
				~synths[0].set(\startposrand, ~startpos0_rand);
			}
			{
				~synths[0].set(\startposrand, 0);
			}
		}
	}, ccNum: 5, chan: 0
);

~midiTriggerRate0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~triggerrate0 = cvalue.linlin(1, 127, 2, 40);
			~synths[0].set(\triggerrate, ~triggerrate0);
		}
	}, ccNum: 2, chan: 0
);

~midiTriggerRate0_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~triggerrate0 = cvalue.linlin(1, 127, 2, 40);
			~synths[0].set(\triggerrate, ~triggerrate0);
		}
	}, ccNum: 2, chan: 0
);
)

/////////////////////////////// FREE ALL ///////////////////////////////////
(
CmdPeriod.run;
~grainSynthDef.free;

~midiPrint.free;
~midiStart0.free;
~midiStop0.free;
~midiSqrEnv0.free;
~midiFallEnv0.free;
~midiRiseEnv0.free;
~midiSpikeEnv0.free;
~midiCurveEnv0.free;
~midiAmp0.free;
~midiPan0.free;
~midiResetPan0.free;
~midiGrainLength0.free;
~midiStartPos0.free;
~midiTriggerRate0.free;
~midiPlaySpeed0.free;
~midiPan0_Rand.free;
~midiStartPos0_Rand.free;
~midiGrainLength0_Rand.free;
~midiTriggerRate0_Rand.free;
)