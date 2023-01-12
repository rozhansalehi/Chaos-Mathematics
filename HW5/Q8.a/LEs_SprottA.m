%% Sprott A

%% IC=[0 5 0]
runtime =100000;
dim = 3;
IC=[0 5 0];

[T,LE]=lyapunov(dim,@SprottA,@ode45,0,0.5,runtime,IC,runtime*2);
landa_1=LE(end,1);
landa_2=LE(end,2);
landa_3=LE(end,3);
    
LE(end,:)
 
landa = [landa_1;landa_2;landa_3];
save landa landa

load landa
LEs = sort(landa)

%% IC=[0 1 0]
runtime =100000;
dim = 3;
IC=[0 1 0];

[T,LE]=lyapunov(dim,@SprottA,@ode45,0,0.5,runtime,IC,runtime*2);
landa_1=LE(end,1);
landa_2=LE(end,2);
landa_3=LE(end,3);
    
LE(end,:)
 
landa = [landa_1;landa_2;landa_3];
save landa landa

load landa
LEs = sort(landa)


