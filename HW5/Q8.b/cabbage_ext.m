function f=cabbage_ext(t,X)
global A
x=X(1); y=X(2); z=X(3);

Y= [X(4), X(7), X(10);
    X(5), X(8), X(11);
    X(6), X(9), X(12)];

f=zeros(12,1);

f(1) =y;
f(2) =  -(0.33)^2*x + y*cos(x) + A*sin(0.73*z);
f(3) = 1;

%Linearized system
 J= [         0         ,    1   ,       0           ;
     -(0.33)^2-y*sin(x) , cos(x) , A*0.73*cos(0.73*z);
              0         ,    0   ,       0          ];
    
%Variational equation   
f(4:12)=J*Y;

%Output data must be a column vector

end

