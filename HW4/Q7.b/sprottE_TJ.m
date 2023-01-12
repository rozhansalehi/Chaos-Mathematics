syms x y z 
E=[y*z ,x^2-y , 1-4*x ]
v=[x y z];
j=jacobian(E,v)
trace=j(1,1)+j(2,2)+j(3,3) 
if trace<0 
    disp('Dissipative')
end
