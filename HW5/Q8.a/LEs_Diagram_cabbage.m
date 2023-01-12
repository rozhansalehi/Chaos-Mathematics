close all
clear all
runtime =10000;
dim = 3;
i=0;

A_min = 0;
resul = 0.005;
A_max = 2;
Amat = A_min:resul:A_max;

IC =[0.001 0.002 0.001];

global A
tic
length(Amat)
for j = 1:length(Amat)
    A = Amat(j);
    A
   [T,Res]=lyapunov(dim,@cabbage_ext,@ode45,0,0.5,runtime,IC,runtime*2);
   landa_1(j)=Res(end,1);
   landa_2(j)=Res(end,2);
   landa_3(j)=Res(end,3);
      
end
toc
length(landa_1)
Res(end,:);

landa = [landa_1; landa_2; landa_3];
save landa landa
load landa
LEs = sort(landa) 

j = 1:length(Amat);
figure
plot(Amat(j),LEs(1,j),'c','linewidth',1)
hold on
plot(Amat(j),LEs(2,j),'m','linewidth',1)
hold on
plot(Amat(j),LEs(3,j),'g','linewidth',1.5)
hold on
xlim([Amat(1) Amat(end)])
plot(Amat,zeros(size(Amat)),'--k','markersize',30,'DisplayName','zero')
xlabel('A','FontName','Times New Roman','fontsize',20)
ylabel('Lyapunov Exponents','FontName','Times New Roman','fontsize',15)
legend('\lambda_min','\lambda_2','\lambda_max','zero','location','southeast')


