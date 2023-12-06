// inspect test sound file
(
f = SoundFile.new;
f.openRead(thisProcess.nowExecutingPath.dirname +/+ "stefani.wav");
f.inspect;
f.close;
)

// first a standard read so we can see what's in the file
b = Buffer.read(s, Platform.resourceDir +/+ "sounds/SinedPink.aiff");
// Platform.resourceDir +/+ "sounds/SinedPink.aiff" contains SinOsc on left, PinkNoise on right
b.plot;
b.free;

// Now just the sine
b = Buffer.readChannel(s, Platform.resourceDir +/+ "sounds/SinedPink.aiff", channels: [0]);
b.plot;
b.free;

// Now just the pink noise
b = Buffer.readChannel(s, Platform.resourceDir +/+ "sounds/SinedPink.aiff", channels: [1]);
b.plot;
b.free;

// Now reverse channel order
b = Buffer.readChannel(s, Platform.resourceDir +/+ "sounds/SinedPink.aiff", channels: [1, 0]);
b.plot;
b.free;

// create global buffer, play it back
(
~stefani = Buffer.read(s, "stefani.wav".resolveRelative);
)

(
~stefani_left = Buffer.readChannel(s, "stefani.wav".resolveRelative, channels: [0]);
)

// create SynthDef with buffer
(
x = SynthDef(\test_Buffer, {
	arg out = 0, bufnum;

	Out.ar(out, PlayBuf.ar(2, bufnum, BufRateScale.kr(bufnum)));
}).play(s, [\bufnum, b]);
)

x.free;

// create a GrainBuf
(
var winenv;

a = Buffer.read(s, Platform.resourceDir +/+ "sounds/a11wlk01-44_1.aiff");

// a custom envelope
winenv = Env([0, 1, 0], [0.5, 0.5], [8, -8]);
z = Buffer.sendCollection(s, winenv.discretize, 1);

SynthDef(\buf_grain_test, { |out, gate = 1, amp = 1, sndbuf, envbuf|
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
x = Synth(\buf_grain_test, [\sndbuf, ~stefani_left, \envbuf, -1])

// switch to the custom env
x.set(\envbuf, z)
x.set(\envbuf, -1);

x.free;

// change a parameter of GrainBuf in real time
x.set()