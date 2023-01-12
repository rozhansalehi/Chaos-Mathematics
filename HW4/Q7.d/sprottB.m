function dM=sprottB(t,M)
dM=zeros(2,1);
x=M(1);
y=M(2);
z=M(3);

dM(1)=y*z;
dM(2)=x-y;
dM(3)=1-x*y;
end
