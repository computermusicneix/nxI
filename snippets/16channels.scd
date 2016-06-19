
a = Server.local.options;
a.numOutputBusChannels = 16;

p = ProxySpace.push(s.reboot);

(
"jack_connect SuperCollider:out_3 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_4 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_5 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_6 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_7 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_8 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_9 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_10 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_11 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_12 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_13 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_14 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_15 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_16 system:playback_2".unixCmd;
)

NXStageLimiter16.activate;

History.loadStory("/home/neix/nxSystem/nx16ch-Improvisation03.scd");
History.play;

NXRec16.a;
NXRec16.b("nx16ch-Improvisation0")

// code here

NXRec16.c;