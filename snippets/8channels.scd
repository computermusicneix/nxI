
// 8 Channels:

// Multichannel (8 channels):

NXRec8.a;
NXRec8.b("title");

NXStageLimiter8.activate;

s.options.numOutputBusChannels = 8;

(
"jack_connect SuperCollider:out_3 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_4 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_5 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_6 system:playback_2".unixCmd;
"jack_connect SuperCollider:out_7 system:playback_1".unixCmd;
"jack_connect SuperCollider:out_8 system:playback_2".unixCmd;
)

// Code here



NXStageLimiter8.deactivate;
NXRec8.c;