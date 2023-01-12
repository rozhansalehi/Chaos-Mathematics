function dM=sprottD(t,M)
dM=zeros(2,1);
x=M(1);
y=M(2);
z=M(3);

dM(1)=-1*y;
dM(2)=x + z;
dM(3)=x*z+3*y^2;
end
