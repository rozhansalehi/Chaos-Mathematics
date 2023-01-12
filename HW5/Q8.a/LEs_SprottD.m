%% Sprott D
runtime =100000;
dim = 3;
IC=[0.05 0.05 0.05];

[T,LE]=lyapunov(dim,@SprottD,@ode45,0,0.5,runtime,IC,runtime*2);
landa_1=LE(end,1);
landa_2=LE(end,2);
landa_3=LE(end,3);
    
LE(end,:)
 
landa = [landa_1;landa_2;landa_3];
save landa landa

load landa
LEs = sort(landa)
