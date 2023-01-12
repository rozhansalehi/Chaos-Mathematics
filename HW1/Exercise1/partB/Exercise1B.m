transient = 500;
steady = 80;
N = transient+steady;


Amin = 3.4;
Amax = 4;
resul = 0.0002;
ploti = [];
Q_CURVE = [];
AA = [];

for A = Amin:resul:Amax
    z(1) = 0.1;
    y(1) = 0.5;
    A;
    for n = 1:N
        z(n+1) = LOGISTIC(A,z(n));
    end
    
    for n = 1:6
        y(n+1) = LOGISTIC(A,y(n));
    end
    
    Q_CURVE= [Q_CURVE y(2:6)'];
    ploti = [ploti z(end-steady:end)'];
    AA = [AA A];
end


MarkerSize = 0.1;
figure(1)
plot(AA,ploti,'o','MarkerEdgeColor','g','MarkerFaceColor','b','MarkerSize',MarkerSize)
xlabel('A','FontName','Times New Roman','FontSize',20)
ylabel('X_i_n_f','FontName','Times New Roman','FontSize',24)
axis([Amin Amax 0 1])
hold on
plot(AA,Q_CURVE , 'markersize' ,6  )
