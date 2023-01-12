%% Sprott B

syms x y z 
B=[y*z ,x-y , 1-x*y ]
v=[x y z];
j=jacobian(B,v)
trace=j(1,1)+j(2,2)+j(3,3) 
if trace<0 
    disp('Dissipative')
end


