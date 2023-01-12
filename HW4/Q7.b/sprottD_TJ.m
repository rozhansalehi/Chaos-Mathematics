%% Sprott D

syms x y z 
D=[-1*y ,x+z , x*z+3*y^2 ]
v=[x y z];
j=jacobian(D,v)
trace=j(1,1)+j(2,2)+j(3,3) 

runtime=50000;
resul=0.01;
IC=[.05 .05 .05];
Er = 1e-5;

options=odeset('RelTol',Er,'AbsTol',[Er Er Er]);
[t,v]=ode15s(@sprottD, 0:resul:runtime,IC ,options);

X=v(:,1);
Y=v(:,2);
Z=v(:,3);

avgmat=[];
time=[];
 for deltaT=1000:1000:runtime
   
     avg=(sum(X(1:deltaT/resul))*resul)/deltaT;
     avgmat=[avgmat avg];
     time=[time deltaT];
     end
avgmat
plot(time,avgmat,'color', [120 50 150]/255)
title('SprottD: DC of trace(jacobian)')
xlabel('time')
ylabel('DC(trace(jacobian))')

save sprottD_TJ
