r1 = [-3,5]
r2 = [3,4]
r3 = [-2,4,-3]

p1 = poly(r1)
p2 = poly(r2)
p3 = poly(r3)
x = [-100:1:100]

tiledlayout(2,2);
nexttile;
plot(x,polyval(p1,x),x,polyval(p2,x),x,polyval(p3,x));
title('a)');
nexttile;
loglog(x,polyval(p1,x),x,polyval(p2,x),x,polyval(p3,x));
title('b)');
nexttile;
semilogy(x,polyval(p1,x),x,polyval(p2,x),x,polyval(p3,x));
title('c) ');
nexttile;
semilogx(x,polyval(p1,x),x,polyval(p2,x),x,polyval(p3,x));
title('d)');