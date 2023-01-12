transient = 500;
steady = 0 ;
Amin = 3.4;
Amax = 4;
resul = 0.0005;

 for steady= 1:500
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
plot(AA,ploti,'o','MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',MarkerSize)
title('Bifurcation Diagram (for 1 to 500 steady points)' , 'FontName' , 'Times New Roman' , 'FontSize',10)
xlabel('A','FontName','Times New Roman','FontSize',20)
ylabel('X_i_n_f','FontName','Times New Roman','FontSize',24)
axis([Amin Amax 0 1])
F(steady)=getframe(gcf);
close all
end
v=VideoWriter('differentsteady.mp4', 'MPEG-4');
v.FrameRate=10;
open(v)
writeVideo(v,F);
close(v)

