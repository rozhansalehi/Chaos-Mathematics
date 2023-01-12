transient = 450;
steady = 80;
N = transient+steady;

Amin =10;
Amax =41;
resul = 0.002;

ploti = [];
AA = [];

for A = Amin:resul:Amax
    z(1) = 0.14;
    A;
    for n = 1:N
        if (0.1<z(n))&&(z(n)<0.2)
            z(n+1)=0.8+A*(z(n)-0.1)*(0.2-z(n));
        elseif(0.8<z(n))&&(z(n)<0.9)
            z(n+1)=0.1+A*(z(n)-0.8)*(0.9-z(n));
        end 
    end
    ploti = [ploti z(end-steady:end)'];
    AA = [AA A];
end


MarkerSize = 0.1;
figure(1)
plot(AA,ploti,'o','MarkerEdgeColor','g','MarkerFaceColor','b','MarkerSize',MarkerSize)
xlabel('A','FontName','Times New Roman','FontSize',20)
ylabel('X_i_n_f','FontName','Times New Roman','FontSize',24)
%axis([Amin Amax 0 1])


