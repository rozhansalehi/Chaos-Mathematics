function dM=network_lorenz(t,M)
global N G d
dM = zeros(size(M)); 
x=M(1:N,1);y=M(N+1:2*N,1);z=M(2*N+1:3*N,1);

a=10; b=28;  c=8/3;

e_coupling =d*G*x;
dM(1:N,1)=a*(y-x)+e_coupling;
dM(N+1:2*N,1)=x.*(b-z)-y;
dM(2*N+1:3*N,1)=x.*y-c*z;
end
