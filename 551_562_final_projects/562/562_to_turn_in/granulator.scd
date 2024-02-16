s.boot;
s.makeWindow; // for recording
s.reboot;

currentEnvironment;
currentEnvironment.clear;
Server.default.options.outDevice_("MacBook Pro Speakers");
s.options.outDevice_("External Headphones");

// create buffers
(
~synths = Array.newClear(4);

// ~buf0 = Buffer.readChannel(s, "stefani.wav".resolveRelative, channels: [0]);
// ~buf1 = Buffer.readChannel(s, "ghosts.wav".resolveRelative, channels: [0]);

~buf0 = Buffer.readChannel(s, "mms_05b.mp3".resolveRelative, channels: [0]);
~buf1 = Buffer.readChannel(s, "mms_09.mp3".resolveRelative, channels: [0]);
)

// GrainBuf SynthDef and Envelopes
(
var spike, sqr, fall, rise, curve;
~buf0_length = ~buf0.numFrames;
~buf1_length = ~buf1.numFrames;

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

~grainSynthDef = SynthDef(\granulator_synth, {
	| triggerrate = 10, triggerraterand = 0, grainlength = 0.001, grainlengthrand = 0, sndbuf, speed = 1, speedrand = 0,
	startpos, startposrand = 0, pan = 0, panrand = 0, envbuf, gate = 1, amp = 1, amprand = 0 |

	var pan_min, pan_max, amp_min, amp_max, grainlength_max, speed_min, speed_max,
	startpos_min, startpos_max, triggerrate_min, triggerrate_max;

	// pan randomness
	pan_min = pan - panrand;
	pan_max = pan + panrand;
	pan = TRand.kr(pan_min, pan_max, Dust.kr(100));

	// amp randomness
	amp_min = amp - amprand;
	amp_max = amp + amprand;
	amp = TRand.kr(amp_min, amp_max, Dust.kr(100));

	// grain length randomness
	grainlength_max = grainlength + grainlengthrand;
	grainlength = TRand.kr(grainlength, grainlength_max, Dust.kr(100));

	// playback speed randomness
	speed_max = speed - speedrand;
	speed_min = speed + speedrand;
	speed = TRand.kr(speed_min, speed_max, Dust.kr(100));

	// start position randomness
	startpos_min = startpos - startposrand;
	startpos_max = startpos + startposrand;
	startpos = TRand.kr(startpos_min, startpos_max, Dust.kr(100));

	// trigger rate randomness
	triggerrate_min = triggerrate - triggerraterand;
	triggerrate_max = triggerrate + triggerraterand;
	triggerrate = TRand.kr(triggerrate_min, triggerrate_max, Dust.kr(100));

	Out.ar(0, GrainBuf.ar(2, Impulse.kr(triggerrate), grainlength, sndbuf, speed, startpos, 2, pan, envbuf) * amp);
}).add;
)

///////////////////////// get MIDI in //////////////////////////////////////////
(
MIDIClient.init;
MIDIIn.connectAll;
)

// print MIDI messages
~midiPrint = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		[cvalue,ctlnum,channel].postln;
	}
);

/////////////////////// start or stop buffers ///////////////////////////////////
(
~buff0_exists = 0;
~buff1_exists = 0;

//// buffer 0 /////
~midiStart0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127 && ~buff0_exists == 0) {
			["Buffer 0 start"].postln;

			~synths[0] = Synth.new(\granulator_synth,
				[\triggerrate, ~triggerrate0, \triggerraterand, ~triggerrate0_rand,
				\grainlength, ~grainlength0, \grainlengthrand, ~grainlength0_rand,
				\sndbuf, ~buf0,
				\speed, ~speed0,
				\startpos, ~startpos0, \startposrand, ~startpos0_rand,
				\pan, ~pan0, \panrand, ~pan0_rand,
				\envbuf, ~currentEnv0,
				\amp, ~amp0, \amprand, ~amp0_rand]);

			~buff0_exists = 1;
		};
	}, ccNum: 0, chan: 1
);

~midiStop0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127 && ~buff0_exists == 1) {
			["Buffer 0 stop"].postln;

			~synths[0].free;
			~buff0_exists = 0;
		};
	}, ccNum: 1, chan: 1
);

//// buffer 1 /////
~midiStart1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127 && ~buff1_exists == 0) {
			["Buffer 1 start"].postln;

			~synths[1] = Synth.new(\granulator_synth,
				[\triggerrate, ~triggerrate1, \triggerraterand, ~triggerrate1_rand,
				\grainlength, ~grainlength1, \grainlengthrand, ~grainlength1_rand,
				\sndbuf, ~buf1,
				\speed, ~speed1,
				\startpos, ~startpos1, \startposrand, ~startpos1_rand,
				\pan, ~pan1, \panrand, ~pan1_rand,
				\envbuf, ~currentEnv1,
				\amp, ~amp1, \amprand, ~amp1_rand]);

			~buff1_exists = 1;
		};
	}, ccNum: 8, chan: 1
);

~midiStop1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127 && ~buff1_exists == 1) {
			["Buffer 1 stop"].postln;

			~synths[1].free;
			~buff1_exists = 0;
		};
	}, ccNum: 9, chan: 1
);
)

////////////////////// set envelopes for buffers //////////////////////////////////
(
~currentEnv0 = ~curveEnv;
~currentEnv1 = ~spikeEnv;

//// buffer 0 /////
~midiSqrEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => SqrEnv"].postln;

			~synths[0].set(\envbuf, ~sqrEnv);
			~currentEnv0 = ~sqrEnv;
		}
	}, ccNum: 4, chan: 1
);

~midiFallEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => FallEnv"].postln;

			~synths[0].set(\envbuf, ~fallEnv);
			~currentEnv0 = ~fallEnv;
		}
	}, ccNum: 5, chan: 1
);

~midiRiseEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => RiseEnv"].postln;

			~synths[0].set(\envbuf, ~riseEnv);
			~currentEnv0 = ~riseEnv;
		}
	}, ccNum: 6, chan: 1
);

~midiSpikeEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => SpikeEnv"].postln;

			~synths[0].set(\envbuf, ~spikeEnv);
			~currentEnv0 = ~spikeEnv;
		}
	}, ccNum: 7, chan: 1
);

~midiCurveEnv0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 0 env => CurveEnv"].postln;

			~synths[0].set(\envbuf, ~curveEnv);
			~currentEnv0 = ~curveEnv;
		}
	}, ccNum: 2, chan: 1
);

//// buffer 1 /////
~midiSqrEnv1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 1 env => SqrEnv"].postln;

			~synths[1].set(\envbuf, ~sqrEnv);
			~currentEnv1 = ~sqrEnv;
		}
	}, ccNum: 12, chan: 1
);

~midiFallEnv1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 1 env => FallEnv"].postln;

			~synths[1].set(\envbuf, ~fallEnv);
			~currentEnv1 = ~fallEnv;
		}
	}, ccNum: 13, chan: 1
);

~midiRiseEnv1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 1 env => RiseEnv"].postln;

			~synths[1].set(\envbuf, ~riseEnv);
			~currentEnv1 = ~riseEnv;
		}
	}, ccNum: 14, chan: 1
);

~midiSpikeEnv1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 1 env => SpikeEnv"].postln;

			~synths[1].set(\envbuf, ~spikeEnv);
			~currentEnv1 = ~spikeEnv;
		}
	}, ccNum: 15, chan: 1
);

~midiCurveEnv1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Buffer 1 env => CurveEnv"].postln;

			~synths[1].set(\envbuf, ~curveEnv);
			~currentEnv1 = ~curveEnv;
		}
	}, ccNum: 10, chan: 1
);
)

///////////////////////////////// mixing: amp, panning ///////////////////////
(
//// master /////
~midiStartAll = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127 && ~buff0_exists == 0 && ~buff1_exists == 0) {
			["Start All Buffers"].postln;

			~synths[0] = Synth.new(\granulator_synth,
				[\triggerrate, ~triggerrate0, \triggerraterand, ~triggerrate0_rand,
				\grainlength, ~grainlength0, \grainlengthrand, ~grainlength0_rand,
				\sndbuf, ~buf0,
				\speed, ~speed0,
				\startpos, ~startpos0, \startposrand, ~startpos0_rand,
				\pan, ~pan0, \panrand, ~pan0_rand,
				\envbuf, ~currentEnv0,
				\amp, ~amp0, \amprand, ~amp0_rand]);

			~synths[1] = Synth.new(\granulator_synth,
				[\triggerrate, ~triggerrate1, \triggerraterand, ~triggerrate1_rand,
				\grainlength, ~grainlength1, \grainlengthrand, ~grainlength1_rand,
				\sndbuf, ~buf1,
				\speed, ~speed1,
				\startpos, ~startpos1, \startposrand, ~startpos1_rand,
				\pan, ~pan1, \panrand, ~pan1_rand,
				\envbuf, ~currentEnv1,
				\amp, ~amp1, \amprand, ~amp1_rand]);

			~buff0_exists = 1;
			~buff1_exists = 1;
		};
	}, ccNum: 34, chan: 1
);

~midiStopAll = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (cvalue == 127) {
			["Stop All Buffers"].postln;

			if (~buff0_exists == 1) {
				~synths[0].free;
				~buff0_exists = 0;
			};

			if (~buff1_exists == 1) {
				~synths[1].free;
				~buff1_exists = 0;
			};
		};

	}, ccNum: 35, chan: 1
);

//// buffer 0 /////
// amp
~midiAmp0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		~amp0 = cvalue.linlin(1, 127, 0.001, 1);

		if (~buff0_exists == 1) {
			~synths[0].set(\amp, ~amp0);
		}
	}, ccNum: 44, chan: 0
);

// amp randomness
~midiAmp0_rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~amp0_rand = cvalue.linexp(1, 127, 0.05, 0.9);

			if (cvalue > 0) {
				~synths[0].set(\amprand, ~amp0_rand);
			}
			{
				~synths[0].set(\amprand, 0);
			}
		}
	}, ccNum: 40, chan: 0
);

// pan
~midiPan0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~pan0 = cvalue.linlin(1, 127, -1, 1);
			~synths[0].set(\pan, ~pan0);
		}
	}, ccNum: 32, chan: 0
);

// pan reset
~midiResetPan0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			if (cvalue == 127) {
				"Pan 0 Reset".postln;

				~synths[0].set(\pan, 0);
			}
		}
	}, ccNum: 32, chan: 1
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
	}, ccNum: 36, chan: 0
);

//// buffer 1 /////
// amp
~midiAmp1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		~amp1 = cvalue.linlin(1, 127, 0.001, 1);

		if (~buff1_exists == 1) {
			~synths[1].set(\amp, ~amp1);
		}
	}, ccNum: 45, chan: 0
);

// amp randomness
~midiAmp1_rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~amp1_rand = cvalue.linexp(1, 127, 0.05, 0.9);

			if (cvalue > 0) {
				~synths[1].set(\amprand, ~amp1_rand);
			}
			{
				~synths[1].set(\amprand, 0);
			}
		}
	}, ccNum: 41, chan: 0
);

// pan
~midiPan1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~pan1 = cvalue.linlin(1, 127, -1, 1);
			~synths[1].set(\pan, ~pan1);
		}
	}, ccNum: 33, chan: 0
);

// pan reset
~midiResetPan1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			if (cvalue == 127) {
				"Pan 1 Reset".postln;

				~synths[1].set(\pan, 0);
			}
		}
	}, ccNum: 33, chan: 1
);

// pan randomness
~midiPan1_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~pan1_rand = cvalue.linlin(1, 127, 0.01, 1.0);

			if (cvalue > 0) {
				~synths[1].set(\panrand, ~pan1_rand);
			}
			{
				~synths[1].set(\panrand, 0);
			}
		}
	}, ccNum: 37, chan: 0
);
)

/////////////////////////////// grain attributes: grain size, start pos, rate of fire, speed ///////////
(
//// buffer 0 /////
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
			longest_deviation = ~grainlength0 * 3.0;

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

~midiSpeed0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~speed0 = cvalue.linlin(1, 127, 0.5, 1.5);
			~synths[0].set(\speed, ~speed0);
		}
	}, ccNum: 3, chan: 0
);

~midiResetSpeed0 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			if (cvalue == 127) {
				"Speed 0 Reset".postln;

				~synths[0].set(\speed, 1);
			}
		}
	}, ccNum: 3, chan: 1
);

~midiSpeed0_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff0_exists == 1) {
			~speed0_rand = cvalue.linlin(1, 127, 0.0001, 0.5);

			if (cvalue > 0) {
				~synths[0].set(\speedrand, ~speed0_rand);
			} {
				~synths[0].set(\speedrand, 0);
			}
		}
	}, ccNum: 7, chan: 0
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
			~startpos0_rand = cvalue.linexp(1, 127, 0.0001, 5.0);

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
		var smallest_deviation, largest_deviation;

		if (~buff0_exists == 1) {
			smallest_deviation = ~triggerrate0 / 2.0;
			largest_deviation = ~triggerrate0 * 2.0;

			~triggerrate0_rand = cvalue.linlin(1, 127, smallest_deviation, largest_deviation);

			if (cvalue > 0) {
				~synths[0].set(\triggerraterand, ~triggerrate0_rand);
			}
			{
				~synths[0].set(\triggerraterand, 0);
			}
		}
	}, ccNum: 6, chan: 0
);

//// buffer 1 /////
~midiGrainLength1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		var shortest, longest;

		if (~buff1_exists == 1) {
			shortest = 5.0 / ~buf1.sampleRate;
			longest = 0.4;

			~grainlength1 = cvalue.linexp(1, 127, shortest, longest);
			~synths[1].set(\grainlength, ~grainlength1);
		}
	}, ccNum: 8, chan: 0
);

~midiGrainLength1_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		var shortest_deviation, longest_deviation;

		if (~buff1_exists == 1) {
			shortest_deviation = 5.0 / ~buf1.sampleRate;
			longest_deviation = ~grainlength1 * 3.0;

			~grainlength1_rand = cvalue.linlin(1, 127, shortest_deviation, longest_deviation);

			if (cvalue > 0) {
				~synths[1].set(\grainlengthrand, ~grainlength1_rand);
			}
			{
				~synths[1].set(\grainlengthrand, 0);
			}
		}
	}, ccNum: 12, chan: 0
);

~midiSpeed1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~speed1 = cvalue.linlin(1, 127, 0.5, 1.5);
			~synths[1].set(\speed, ~speed1);
		}
	}, ccNum: 11, chan: 0
);

~midiResetSpeed1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			if (cvalue == 127) {
				"Speed 1 Reset".postln;

				~synths[1].set(\speed, 1);
			}
		}
	}, ccNum: 11, chan: 1
);

~midiSpeed1_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~speed1_rand = cvalue.linlin(1, 127, 0.0001, 0.5);

			if (cvalue > 0) {
				~synths[1].set(\speedrand, ~speed1_rand);
			} {
				~synths[1].set(\speedrand, 0);
			}
		}
	}, ccNum: 15, chan: 0
);

~midiStartPos1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~startpos1 = cvalue.linlin(1, 127, 0.05, 0.95);
			~synths[1].set(\startpos, ~startpos1);
		}
	}, ccNum: 9, chan: 0
);

~midiStartPos1_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~startpos1_rand = cvalue.linexp(1, 127, 0.0001, 5.0);

			if (cvalue > 0) {
				~synths[1].set(\startposrand, ~startpos1_rand);
			}
			{
				~synths[1].set(\startposrand, 0);
			}
		}
	}, ccNum: 13, chan: 0
);

~midiTriggerRate1 = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |

		if (~buff1_exists == 1) {
			~triggerrate1 = cvalue.linlin(1, 127, 2, 40);
			~synths[1].set(\triggerrate, ~triggerrate1);
		}
	}, ccNum: 10, chan: 0
);

~midiTriggerRate1_Rand = MIDIFunc.cc(
	{
		| cvalue, ctlnum, channel, device |
		var smallest_deviation, largest_deviation;

		if (~buff1_exists == 1) {
			smallest_deviation = ~triggerrate1 / 2;
			largest_deviation = ~triggerrate1 * 2;

			~triggerrate1_rand = cvalue.linlin(1, 127, smallest_deviation, largest_deviation);

			if (cvalue > 0) {
				~synths[1].set(\triggerraterand, ~triggerrate1_rand);
			}
			{
				~synths[1].set(\triggerraterand, 0);
			}
		}
	}, ccNum: 14, chan: 0
);
)

/////////////////////////////// FREE ALL ///////////////////////////////////
(
CmdPeriod.run;
~grainSynthDef.free;
currentEnvironment.clear;

~midiStartAll.free;
~midiStopAll.free;

~midiPrint.free;
~midiStart0.free;
~midiStop0.free;
~midiSqrEnv0.free;
~midiFallEnv0.free;
~midiRiseEnv0.free;
~midiSpikeEnv0.free;
~midiCurveEnv0.free;
~midiPan0.free;
~midiAmp0.free;
~midiResetPan0.free;
~midiGrainLength0.free;
~midiSpeed0.free;
~midiResetSpeed0.free;
~midiStartPos0.free;
~midiTriggerRate0.free;
~midiPan0_Rand.free;
~midiAmp0_Rand.free;
~midiStartPos0_Rand.free;
~midiGrainLength0_Rand.free;
~midiTriggerRate0_Rand.free;
~midiSpeed0_Rand.free;

~midiStart1.free;
~midiStop1.free;
~midiSqrEnv1.free;
~midiFallEnv1.free;
~midiRiseEnv1.free;
~midiSpikeEnv1.free;
~midiCurveEnv1.free;
~midiAmp1.free;
~midiPan1.free;
~midiResetPan1.free;
~midiGrainLength1.free;
~midiSpeed1.free;
~midiResetSpeed1.free;
~midiStartPos1.free;
~midiTriggerRate1.free;
~midiPan1_Rand.free;
~midiAmp1_Rand.free;
~midiStartPos1_Rand.free;
~midiGrainLength1_Rand.free;
~midiTriggerRate1_Rand.free;
~midiSpeed1_Rand.free;

MIDIIn.disconnectAll;
s.reboot;
)