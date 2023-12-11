s.reboot;
currentEnvironment;
currentEnvironment.clear;
Server.default.options.outDevice_("MacBook Pro Speakers");

// create global buffer, play it back
(
~stefani = Buffer.read(s, "stefani.wav".resolveRelative);
~stefani_left = Buffer.readChannel(s, "stefani.wav".resolveRelative, channels: [0]);
)

// create a GrainBuf
(
var winenv;

a = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01-44_1.aiff");

// a custom envelope
winenv = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
z = Buffer.sendCollection(s, winenv.discretize, 1);

SynthDef(\buf_grain_test, { | out, gate = 1, amp, sndbuf, envbuf |
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
~x.set(\envbuf, z)
~x.set(\envbuf, -1);

~x.free;

// get MIDI in
(
MIDIClient.init;
MIDIIn.connectAll;

~ctrl_amp = MIDIFunc.cc(
	{
		arg cvalue, ctlnum, channel, device;
		var amp;
		// [cvalue,ctlnum,channel,device].postln;
		amp = cvalue.linexp(1,127,0.0,1.0);
		amp.postln;
	}, ccNum: 0, chan: 0
);
)

~ctrl_amp.free;

// change a parameter of GrainBuf in real time