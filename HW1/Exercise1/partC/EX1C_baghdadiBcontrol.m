%% B is control parameter
transient =500;
steady = 50;
N = transient+steady;

B=5.821;
w1=1.487;
w2=0.2223;

Amin = 5;
Amax = 30;
resul = 0.001;

ploti1 = [];
ploti2= [];
AA = [];

for A = Amin:resul:Amax
    z(1) = 0.5;
    x(1) = -0.5;
    A;
    for n = 1:N
        z(n+1) = baghdadi(A,B,w1,w2,z(n));
        x(n+1) = baghdadi(A,B,w1,w2,x(n));
    end
    
    
    ploti1 = [ploti1 z(end-steady:end)'];
     ploti2 = [ploti2 x(end-steady:end)'];
    AA = [AA A];
end


MarkerSize = 0.1;
figure(1)
plot(AA,ploti1,'o','MarkerEdgeColor','c','MarkerFaceColor','b','MarkerSize',MarkerSize)
hold on
plot(AA,ploti2,'o','MarkerEdgeColor','m','MarkerFaceColor','r','MarkerSize',MarkerSize)
xlabel('A','FontName','Times New Roman','FontSize',20)
ylabel('X_i_n_f','FontName','Times New Roman','FontSize',24)
axis([Amin Amax -4 4])
hold on

