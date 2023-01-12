%% A=10
A=10;
x=0.1 : 0.001 : 0.2;
y1=0.8 + A*(x-0.1).*(0.2-x);
y2=0.8 + A*(y1-0.1).*(0.2-y1);

u=0.8 :0.001 :0.9;
w1=0.1 + A*(u-0.8).*(0.9-u);
w2=0.1 + A*(w1-0.8).*(0.9-w1);

z=0.1:0.001:0.9 ;

plot(x,y2,u,w2)
hold on
plot(z,z)
hold off
grid on
title('second order map for A=10')
xlabel('x_n')
ylabel('x_n_+_1')
legend('second order','second order', 'y=x')

%% A=20

A=20;
x=0.1 : 0.001 : 0.2;
y1=0.8 + A*(x-0.1).*(0.2-x);
y2=0.8 + A*(y1-0.1).*(0.2-y1);

u=0.8 :0.001 :0.9;
w1=0.1 + A*(u-0.8).*(0.9-u);
w2=0.1 + A*(w1-0.8).*(0.9-w1);

z=0.1:0.001:0.9 ;

plot(x,y2,u,w2)
hold on
plot(z,z)
hold off
grid on
title('second order map for A=20')
xlabel('x_n')
ylabel('x_n_+_1')
legend('second order','second order', 'y=x')

%% A=30
A=30;
x=0.1 : 0.001 : 0.2;
y1=0.8 + A*(x-0.1).*(0.2-x);
y2=0.8 + A*(y1-0.1).*(0.2-y1);

u=0.8 :0.001 :0.9;
w1=0.1 + A*(u-0.8).*(0.9-u);
w2=0.1 + A*(w1-0.8).*(0.9-w1);

z=0.1:0.001:0.9 ;

plot(x,y2,u,w2)
hold on
plot(z,z)
hold off
grid on
title('second order map for A=30')
xlabel('x_n')
ylabel('x_n_+_1')
legend('second order','second order', 'y=x')


%% A=35
A=35;
x=0.1 : 0.001 : 0.2;
y1=0.8 + A*(x-0.1).*(0.2-x);
y2=0.8 + A*(y1-0.1).*(0.2-y1);

u=0.8 :0.001 :0.9;
w1=0.1 + A*(u-0.8).*(0.9-u);
w2=0.1 + A*(w1-0.8).*(0.9-w1);

z=0.1:0.001:0.9 ;

plot(x,y2,u,w2)
hold on
plot(z,z)
hold off
grid on
title('second order map for A=35')
xlabel('x_n')
ylabel('x_n_+_1')
legend('second order','second order', 'y=x')




