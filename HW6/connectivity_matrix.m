function [G]=connectivity_matrix(N,K)

a=zeros(N,N);
b=zeros(N,1);
b(1:K+1)=1;
b(N-K+1:N)=1;
a(:,1)=b;

for i=2:N
    a(:,i)=circshift(b,i-1);
end
G=a;
for i=1:N
    G(i,i)=-(sum(a(i,:))-1);
end

end
