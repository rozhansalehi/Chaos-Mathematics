function dM=sprottE(t,M)
dM=zeros(2,1);
x=M(1);
y=M(2);
z=M(3);

dM(1)=y*z;
dM(2)=x^2-y;
dM(3)=1-4*x;
end
