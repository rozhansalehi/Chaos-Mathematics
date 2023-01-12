%% 6-1 Part b
transient =500;
steady = 50;
runtime = transient+steady;

B=5.821;
w1=1.487;
w2=0.2223;

Amin = 5;
Amax = 30;
resul = 0.01;

x_inf = [];
AA = [];
x(1) = 0.5;

for A=Amax:-1*resul:Amin
    for n = 1:runtime
        x(n+1) = baghdadi(A,B,w1,w2,x(n));
    end
    x_inf= [x_inf x(end-steady:end)'];
    AA = [AA A];
    x(1)=x(end);
end

MarkerSize = 0.1;
plot(AA,x_inf,'o','MarkerEdgeColor',[120 50 150]/255,'MarkerFaceColor',[120 50 150]/255,'MarkerSize',MarkerSize)
title('Baghdadi Bifurcation Diagram; Initial Condition:R2L','FontName','Times New Roman','FontSize',12)
xlabel('A','FontName','Times New Roman','FontSize',20)
ylabel('X_i_n_f','FontName','Times New Roman','FontSize',24)
axis([0 35 -4 4])

