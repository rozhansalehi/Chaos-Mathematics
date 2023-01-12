runtime=100;
p=0.7;
Er = 1e-5;
resul=0.01;
IC=[0 0 ; 0 2 ; 2 0 ; 2^0.5 2^0.5 ; 3 0 ; 0 -4];

for i=1:6
    figure(i)
    options=odeset('RelTol',Er,'AbsTol',[Er Er]);
    [t,v]=ode15s(@circle,[0 runtime],IC(i,:) ,options);
    
    x=v(:,1);
    y=v(:,2);
    
   % r=0:0.01:(x.^2+y.^2).^0.5;
   subplot(4,2,1:4)
    plot(x,y,'color','g','linewidth',1,'DisplayName','Run Time')
    title(IC(i,:))
    xlabel('x','FontName','Times New Roman','fontsize',20)
    ylabel('y','FontName','Times New Roman','fontsize',20)
    axis equal
     subplot(4,2,5:6)
    plot(t,x,'color','m')
    subplot(4,2,7:8)
    plot(t,y,'color','c')
  
    grid on
end
