%% Sprott A
syms x y z 
A=[y ,-1*x + y*z , 1-y^2  ]
v=[x y z];
j=jacobian(A,v)
trace=j(1,1)+j(2,2)+j(3,3) 


%% IC=[0 5 0]

runtime=50000;
resul=0.01;
IC1=[0 5 0];
Er = 1e-5;

options=odeset('RelTol',Er,'AbsTol',[Er Er Er]);
[t,v]=ode15s(@sprottA,[0:resul:runtime],IC1 ,options);

X=v(:,1);
Y=v(:,2);
Z=v(:,3)
plot(Z)
avgmat1=[];
time=[];
 for deltaT=1000:1000:runtime
   
     avg=(sum(Z(1:deltaT/resul))*resul)/deltaT;
     avgmat1=[avgmat1 avg];
     time=[time deltaT];
 end
plot(time,avgmat1,'color', [120 50 150]/255)
title('SprottA: DC of trace(jacobian),IC2=[0 1 0],IC=[0 5 0]')
xlabel('time')
ylabel('DC(trace(jacobian))')
%% IC=[0 1 0]

runtime=50000;
resul=0.01;
IC2=[0 1 0];
Er = 1e-5;

options=odeset('RelTol',Er,'AbsTol',[Er Er Er]);
[t,v]=ode15s(@sprottA,[0:resul:runtime],IC2 ,options);

X=v(:,1);
Y=v(:,2);
Z=v(:,3);

avgmat2=[];
time=[];
 for deltaT=1000:1000:runtime
   
     avg2=(sum(Z(1:deltaT/resul))*resul)/deltaT;
     avgmat2=[avgmat2 avg2];
     time=[time deltaT];
 end
plot(time,avgmat2,'color', [120 50 150]/255)
title('SprottA: DC of trace(jacobian), IC2=[0 1 0]')
xlabel('time')
ylabel('DC(trace(jacobian))')




