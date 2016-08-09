Server.program = "/usr/bin/scsynth";

p = ProxySpace.push(s.boot);

//r = Platform.userAppSupportDir +/+ "nxV1/application.linux32/nxV1";

s.boot;

#[\internal, \local].do { |s|
	s = Server.perform(s);
	s.options.numInputBusChannels = 2;
	s.options.numOutputBusChannels = 4;
	s.options.memSize = 1024 * 250;
	s.options.maxNodes = 1024 * 4;
};

s.waitForBoot{
	NXStageLimiter4.activate;
	//r.unixCmd;
	//Buffer.read(s,Platform.userAppSupportDir +/+ 'nxDrones/nxDrone_1.wav',bufnum:1);
	//Buffer.read(s,Platform.userAppSupportDir +/+ 'nxDrones/nxDrone_2.wav',bufnum:2);
	//Buffer.read(s,Platform.userAppSupportDir +/+ 'nxDrones/nxDrone_3.wav',bufnum:3);
	//"Loaded 3 drones on buffers".postln;
	//NXPd.initGUI;
	//10.wait;
	//NXStageLimiter2.activate;
	//"jack_connect SuperCollider:out_3 system:playback_1".unixCmd;
	//"jack_connect SuperCollider:out_4 system:playback_2".unixCmd;
	//MIDIClient.init;
	//n = MIDIOut(0);
	//"aconnect 130:5 129:0".unixCmd;
	//w = Window.new(border:false).front;
	//w.background_(Color(1,1,1));
	//w.alwaysOnTop_(true);
	//w.bounds = Rect(640,300,800,600);
	//v = GUI.userView.new(w, Rect(0, 0, 800, 600));
        //v.background_(Color(1,1,1));
	//v.clearOnRefresh= false;
};

m = NetAddr("127.0.1.1", 12000);

// s,m,p

// GUI

//GUI.swing; //use swingosc
//SwingOSC.program = "/home/neix/share/SuperCollider/SwingOSC/SwingOSC.jar";
//g = SwingOSC.default;

//g.waitForBoot({
// 	Server.local.makeGui; //show local server
// 	Server.internal.makeGui; //show internal server
//	w = Window.new(border:false).front;
//	w.view.background_(Color(1,1,1));
//	w.alwaysOnTop_(true);
//	w.bounds = Rect(640,300,800,600);
//	v = GUI.userView.new(w, Rect(0, 0, 800, 600));
//      v.view.background_(Color(1,1,1));
//	v.clearOnRefresh= false;
//});
