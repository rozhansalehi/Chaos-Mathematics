%% IC=[1 1.2 0];

syms x y z 
S2=[y , -x+y*z , 1-4*y^2+x^2 ]
v=[x y z];
j=jacobian(S2,v)
trace=j(1,1)+j(2,2)+j(3,3) 

runtime=50000;
resul=0.01;
IC=[1 1.2 0];
Er = 1e-5;

options=odeset('RelTol',Er,'AbsTol',[Er Er Er]);
[t,v]=ode15s(@system, 0:resul:runtime,IC ,options);

X=v(:,1);
Y=v(:,2);
Z=v(:,3);

avgmat=[];
time=[];
 for deltaT=1000:1000:runtime
   
     avg=(sum(Z(1:deltaT/resul))*resul)/deltaT;
     avgmat=[avgmat avg];
     time=[time deltaT];
     end

plot(time,avgmat,'color', [120 50 150]/255)
title(' DC of trace(jacobian),IC=[1 1.2 0];')
xlabel('time')
ylabel('DC(trace(jacobian))')

save s2


