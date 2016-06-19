// For live input with another audio card:
// .jackdr

// /usr/bin/jackd -dalsa -r44100 -p1024 -n2 -D -Chw:1 -Phw:0

~a.play;
~a = { SoundIn.ar([0,1])};

~a = nil;