function [pol_roots,nth_deriv,pol_values] = WZ_CAE_3_3(A,n, r_min,r_max)
% WZ_CAE_3_3(A, n, r_min, r_max)
% Calculates roots of polynomial A, n-th derivative,
% values in range (r_min,r_max)and draws shape of polynomial

pol_roots = roots(A)

nth_deriv = A;
for i=1:n
    nth_deriv = polyder(nth_deriv);
end
 text1 = "";
 for i=1:length(nth_deriv)
    text1 = text1 +(num2str(nth_deriv(i)) + "x^"+(num2str(length(nth_deriv)-i)));
    if length(nth_deriv)-i>0
        text1 = text1 + " + ";
    end   
 end
 
 display(text1);


x = [r_min:1:r_max];
pol_values = polyval(A,x)
plot(x,pol_values,'-b');
text = "Shape of polynomial in range from "+ num2str(r_min)+":"+num2str(r_max);
title(text);

end