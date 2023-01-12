steady =100 ;
Amin = 3.4;
Amax = 4;
resul = 0.0005;

for transient=1:499
    ploti = [];
    AA = [];
    for A = Amin:resul:Amax
        z(1) = rand();
        A;
        for n = 1:(transient+steady)
            z(n+1) = logistic(A,z(n));
        end
        ploti = [ploti z( end-steady : end )'];
        AA = [AA A];
    end
                 
MarkerSize = 0.1;
figure()
plot(AA,ploti,'.','MarkerEdgeColor','b','MarkerFaceColor','r','MarkerSize',MarkerSize)
title('Bifurcation Diagram (for 0 to 499 transient points points)' , 'FontName' , 'Times New Roman' , 'FontSize',10)
xlabel('A','FontName','Times New Roman','FontSize',20)
ylabel('X_i_n_f','FontName','Times New Roman','FontSize',24)
axis([Amin Amax 0 1])
F(transient)=getframe(gcf);
close all
end
v=VideoWriter('2B', 'MPEG-4');
v.FrameRate=10;
open(v)
writeVideo(v,F);
close(v)
