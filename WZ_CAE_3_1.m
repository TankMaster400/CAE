% Calculates roots and derivative of polynomial P1
% Draws its shapes in range beetwen -10 and 10, with step 0.01
% One with both axis being linear and one with Y axis being logarithmic 

R = roots(P1)

D = polyder(P1)

x = [-10:0.01:10];
pol_values = polyval(P1,x);
tiledlayout(2,1);
nexttile;
plot(x,pol_values,'-b');
title('Shape of polynomial in range from -10:10, both axis are linear');
xlabel('X value');
ylabel('Y value');
nexttile;
semilogy(x,pol_values,'-b');
title('Shape of polynomial in range from -10:10, Y axis is logarithmic');
xlabel('X value');
ylabel('Y value');