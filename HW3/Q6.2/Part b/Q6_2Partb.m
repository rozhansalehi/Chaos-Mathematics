clear all;close all

runtime = 500;
Er = 1e-5;
global A

% Constant initial condition near (0,0)
IC = [0.001 0.002];

%% a= parameter of the system
a_min = 0;
resul = 0.001;
a_max = 2;
a = a_min : resul : a_max;
x_inf = nan(4000 , length(a));
y_inf= nan(4000 , length(a));

IC_mat = [];
options = odeset('RelTol',Er,'AbsTol',[Er Er]);
coloumn_number = 0;
a_mat = [];

tic
for a = a_min : resul : a_max
    coloumn_number = coloumn_number + 1;
    A = a
    a_mat = [a_mat a];
    
    [T , M] = ode15s(@Cabbage, [0 runtime],IC,options);
    X = M(: , 1);
    Y = M(: , 2);
        
    p = 0.4;
    size = length(X);
    X = X(floor(size * p) + 1 : end , 1);
    Y = Y(floor(size * p) + 1 : end , 1);
    T = T(floor(size * p) + 1 : end , 1);
    
    x = findpeaks(X);
    x_inf(1 : length(x) , coloumn_number) = x;
    y = findpeaks(Y);
    y_inf(1 : length(y) , coloumn_number) = y;
    
   IC_mat = [IC_mat; IC];
    
end
toc
save a_mat a_mat
save x_inf x_inf
save y_inf y_inf

load a_mat
load x_inf
load y_inf

Font_size = 20;
p
runtime
resul
IC
figure
plot(a_mat,x_inf','ob','MarkerEdgeColor',[120 50 150]/255,'MarkerFaceColor',[120 50 150]/255,'MarkerSize',1)
xlim([a_mat(1) a_mat(end)])
title('X Bifurcation Diagram of nonAutonomous Cabbage; Initital Condition=const.','FontName','Times New Roman','fontsize',10)
xlabel('A','FontName','Times New Roman','fontsize',Font_size)
ylabel('x_{max}','FontName','Times New Roman','fontsize',Font_size+2)

p
runtime
resul
IC
figure
plot(a_mat,y_inf','ob','MarkerEdgeColor',[120 50 150]/255,'MarkerFaceColor',[120 50 150]/255,'MarkerSize',1)
xlim([a_mat(1) a_mat(end)])
title('Y Bifurcation Diagram of nonAutonomous Cabbage; Initital Condition=const.','FontName','Times New Roman','fontsize',10)
xlabel('A','FontName','Times New Roman','fontsize',Font_size)
ylabel('y_{max}','FontName','Times New Roman','fontsize',Font_size+2)

