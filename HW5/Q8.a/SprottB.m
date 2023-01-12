function f=SprottB(t,X)
x=X(1); y=X(2); z=X(3);

Y= [X(4) , X(7) , X(10);
    X(5) , X(8) , X(11);
    X(6), X(9), X(12) ];

f=zeros(12,1);

f(1)=y*z;
f(2)=x-y;
f(3)=1-x*y;

%linearized system
J=[ 0  ,  z  , y;
   1  ,  -1  , 0;
    -1*y  ,-1*x , 0 ];

% variational equation
f(4:12)=J*Y;

%Output data must be a column vector
end

