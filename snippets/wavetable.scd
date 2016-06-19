// Read a sample as wavetable:

(
f = SoundFile.openRead(Platform.userAppSupportDir +/+ "/nxAudio/nxSample-"++rrand(1,100)++".wav");
f.seek(0);
f.readData(d=Signal.newClear(512));
f.close;
d = d.asWavetable;
b = Buffer.sendCollection(s,d,wait:-1);
);



