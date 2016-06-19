// Recording Samples:

// List of samples:
g = FileReader.read("/home/neix/nx/samples/sPE_Interviews/sPE_Interviews.txt");

// Part of sample:
b = RedBuffer(s, "/home/neix/nx/samples/sPE_Interviews/" ++ g[rrand(0,9)][0], rrand(0.1,0.9), rrand(0.1,1.0));

// Entire sample:
b = Buffer.read(s, "/home/neix/nx/samples/ca/violin2.wav");

b.free;