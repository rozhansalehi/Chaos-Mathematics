% B is control
B=5.821;
w1=1.487;
w2=0.2223;
x= -10: 0.01 :10;
A=[5 8 9 10 17 23 24 25 26];


for i=1:9
    y=baghdadi(A(i),B,w1,w2,x);
    plotmat(i,1:length(y))=y(1:length(y));
  
end

plot(x,plotmat(1,1:2001),'color',[0.4 0.2 0.5],'linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on
plot(x,plotmat(2,1:2001),'color','r','linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on

plot(x,plotmat(3,1:2001),'color','g','linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on

plot(x,plotmat(4,1:2001),'color',[0.95 0.05 0.8],'linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on

plot(x,plotmat(5,1:2001),'color',[0.4 0.2 0.5],'linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on

plot(x,plotmat(6,1:2001),'color','y','linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on

plot(x,plotmat(7,1:2001),'color',[0.2 0.8 0.01],'linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on

plot(x,plotmat(8,1:2001),'color',[0.5 0.02 0.2],'linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on

plot(x,plotmat(9,1:2001),'color',[0.2 0.85 0.8],'linewidth', 2)
xlabel('out_n')
ylabel('out_n_+_1')
axis equal
grid on


