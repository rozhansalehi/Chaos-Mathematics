function f=SprottE(t,X)
x=X(1); y=X(2); z=X(3);

Y= [X(4) , X(7) , X(10);
    X(5) , X(8) , X(11);
    X(6), X(9), X(12) ];

f=zeros(12,1);

f(1)=y*z;
f(2)=x^2-y;
f(3)=1-4*x;

%linearized system
J=[ 0  ,  z  , y;
   2*x , -1  , 0;
   -4  ,  0  , 0 ];

% variational equation
f(4:12)=J*Y;

%Output data must be a column vector
end

