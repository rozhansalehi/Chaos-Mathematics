%% Sprott C
syms x y z 
C=[y*z ,x-y , 1-x^2 ]
v=[x y z];
j=jacobian(C,v)
trace=j(1,1)+j(2,2)+j(3,3) 
if trace<0 
    disp('Dissipative')
end


