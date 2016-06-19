
// A Genetic Algorithm

// 0.Binary to decimal function:

f = { arg a;
	var b;
	b = Array.series(a.size,0,1).reverse;
	a = a.collect({arg item,i; item*(2**b[i])});
	a = a.sum;
};	

// 1.Creation:

a = rrand(10,33);
b = Array.fill(a, {Array.fill(4, {rrand(0,1)})});
c = Array.fill(a, {Array.fill(4, {rrand(0,1)})});

// 2.Selection:

d = b[rrand(0,a-1)]; 
f.value(d);
e = c[rrand(0,a-1)]; 
f.value(e);

// 3.Recombination:

d = [d[0],d[1],e[2],e[3]]; 
f.value(d);
e = [e[0],e[1],d[2],d[3]]; 
f.value(e);

// 4.Mutation:

d[rrand(0,3)] = rrand(0,1);
f.value(d);
e[rrand(0,3)] = rrand(0,1);
f.value(e);



     