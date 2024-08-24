r = [1,-4,3,-10]
p = poly(r)

k = polyder(p)

A1 = polyval(p,20)
B1 = polyval(p,-5)
C1 = polyval(p,0)
D1 = polyval(p,10)
E1 = polyval(p,15)


r2 = roots(p)


x = [-100:1:100]
plot(x,polyval(p,x),'-b');
title('Shape of polynomial in range from -100:100');