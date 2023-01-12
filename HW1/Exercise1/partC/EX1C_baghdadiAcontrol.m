%% A is control parameter
transient = 500;
steady = 50;
N = transient+steady;

A=12.473;
w1=1.487;
w2=0.2223;

Bmin = 0;
Bmax =30;
resul = 0.001;

ploti1 = [];
ploti2= [];
BB = [];

for B= Bmin:resul:Bmax
    z(1) = 0.5;
    x(1)=-0.5;
    B;
    for n = 1:N
        z(n+1) = baghdadi(A,B,w1,w2,z(n));
        x(n+1) = baghdadi(A,B,w1,w2,x(n));
    end
    
     ploti1 = [ploti1 z(end-steady:end)'];
     ploti2 = [ploti2 x(end-steady:end)'];
     BB = [BB B];
end

MarkerSize = 0.1;
figure(1)
plot(BB,ploti1,'o','MarkerEdgeColor','c','MarkerFaceColor','c','MarkerSize',MarkerSize)
hold on
plot(BB,ploti2,'o','MarkerEdgeColor','m','MarkerFaceColor','m','MarkerSize',MarkerSize)
xlabel('B','FontName','Times New Roman','FontSize',20)
ylabel('X_i_n_f','FontName','Times New Roman','FontSize',24)
axis([Bmin Bmax -15 20])


