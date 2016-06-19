
// Binary 2 Decimal

f = { arg a;
	var b;
	b = Array.series(a.size,0,1).reverse;
	a = a.collect({arg item,i; item*(2**b[i])});
	a = a.sum;
};	

f.value([1,0,0,1,1,0]); // 38
f.value([1,1,0,0,0,1,0]); // 98
f.value([0,0,1,1]); // 3
 