% B is control
B=5.821;
w1=1.487;
w2=0.2223;
x= linspace(-10 , 10 , 2501);

A=5:0.01:30;
for i=1:2501
    y=baghdadi(A(i),B,w1,w2,x);
    figure('units','pixels','position',[0 0 1920 1080])
    plot(x,y,'color', 'c','linewidth',2)
    title('Bagdadi Map for A=5to A=30','fontsize',10)
    xlabel('out_n')
    ylabel('out_n_+_1')
    axis equal
    axis([-10 10 -20 20])
    grid on
    F(i)=getframe(gcf);
    close all
end

v=VideoWriter('Exercise2C.mp4', 'MPEG-4');
v.FrameRate=5;
open(v)
writeVideo(v,F);
close(v)
