clear variables;
clc;

A1=[2:2:8]

A2 = A1.'

A3 = logspace(0,2,13)
B3 = randi(10,1,13)

C3 = A3.*B3
D3 = A3*B3.'

A4 =sort(randi(10,15,1),'descend')

A5 = randi(20,1,5)
B5 = randi(20,1,5)
C5 = randi(20,1,5)
D5 = randi(20,1,5)
E5 = randi(20,1,5)
F5 = [A5;B5;C5;D5;E5]

A6 = eye(25)

A7 = rand(3)
B7 = rand(3) 

A7+3
A7-2
A7+B7
A7-B7

3.*A7
3*A7
A7.*B7
A7*B7

A7.\B7
A7\B7
A7.\2

A7./B7
A7/B7
A7./2
A7/2

A7.^B7
A7.^2
A7^2

A7.'
A7'

E8 = randi(50,3,4)
A8 = E8(:,1).'
B8 = E8(2:2:end).'


A9 = ones(5,4)
B9 = A9;
B9(2:2:end) = rand(10,1)

A10 = randi(20,10,10)-10
B10 = find(A10>0.5)

A11 = length(B10)

A12 = 'Wojciech'
B12 = A12(3:3:end)