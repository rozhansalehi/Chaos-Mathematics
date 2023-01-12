function dM = Cabbage(t , M)
global A
dM = zeros(2,1); 
x = M(1);
y = M(2);
%z = M(3);

dM(1) = y;
dM(2) = -(0.33)^2*x + y*cos(x) + A*sin(0.73*t);
%dM(3) = 1;  
end
