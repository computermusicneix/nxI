// Recording:

// init

History.clear.end;

History.start;

u = Date.getDate.format("nx%Y-%m-%d_%H_%M_%S").postln;

v = "ffmpeg -f x11grab -s 1440x900 -i :0.0 -vcodec libx264 -preset ultrafast -qp 0 -threads 0 " ++ u ++".mkv";

Server.default.recHeaderFormat = "WAV";

Server.default.recSampleFormat = "int16";

Server.default.prepareForRecord(u++".wav");

Server.default.record;v.unixCmd;

// end

Server.default.stopRecording; "killall ffmpeg".unixCmd; "killall java".unixCmd;

History.end;

History.saveStory(u++".scd");