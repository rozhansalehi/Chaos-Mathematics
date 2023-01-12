clear all;close all;
global N G d
tic
run_time =1000;
deltaT=0.01;

N=10;% number of coupled oscillators
degree=1;% number of neighbour


d=25;% coupling strength
G=connectivity_matrix(N,degree); % coupling matrix

%% init
x_IC = rand(N,1);
y_IC = rand(N,1);
z_IC = rand(N,1);
IC_mat=vertcat(x_IC,y_IC,z_IC);

[T,V]=rk4(@network_lorenz,0, run_time, deltaT, IC_mat);

X = V(:,1:N);
Y = V(:,N+1:2*N);
Z = V(:,2*N+1:3*N);

figure
plot(X)
txt1 = ['X-nodes time series, d= ',num2str(d)];
title(txt1)
xlabel('time')
ylabel('X','FontSize',15)

figure
imagesc(X)
txt2= ['Colored-map of Oscillators, d=', num2str(d)];
title(txt2)
xlabel('Number of oscillator')
ylabel('time')

figure
plot(1:N,X(end,:),'.', 'MarkerSize', 10)
grid on
txt3= ['Snapshot of last amount of X, d= ', num2str(d)];
title(txt3)
xlabel('Number of oscillator')
ylabel('The last amount of X')
toc
