function WZ_CAE_3_2(a,b)
% WZ_CAE_3_2(a,b)
% display variable in chosen format
% a - variable (number/s)
% b - format ('long', 'hex', '+', 'bank', 'short')

format (b);
display (a);
format ('short'); %return to standard format
end