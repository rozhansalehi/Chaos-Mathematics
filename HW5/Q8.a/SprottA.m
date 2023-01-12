function f=SprottA(t,X)
x=X(1); y=X(2); z=X(3);

Y= [X(4) , X(7) , X(10);
    X(5) , X(8) , X(11);
    X(6), X(9), X(12) ];

f=zeros(12,1);

f(1)=y;
f(2)=-1*x + y*z;
f(3)=1-y^2;

%linearized system
J=[ 0  ,  1  , 0;
   -1  ,  z  , y;
    0  ,-2*y , 0 ];

% variational equation
f(4:12)=J*Y;

%Output data must be a column vector
end
