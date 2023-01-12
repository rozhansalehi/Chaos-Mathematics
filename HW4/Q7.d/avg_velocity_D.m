%% Average Velocity

Sprott D 
runtime=50000;
resul=0.01;
ICD=[0.05 0.05 0.05];
Er = 1e-5;

options=odeset('RelTol',Er,'AbsTol',[Er Er Er]);
[t,v]=ode15s(@sprottD,[0:resul:runtime],ICD ,options);

X=v(:,1);
Y=v(:,2);
Z=v(:,3);

%% xdot

avgmatD1=[];
time=[];
 for deltaT=1000:1000:runtime
   b1=-1.*Y;
     avgD1=(sum(b1(1:deltaT/resul))*resul)/deltaT;
     avgmatD1=[avgmatD1 avgD1];
     time=[time deltaT];
 end
plot(time,avgmatD1,'color', [120 50 150]/255)
title('SprottD: Average Velocity,ICD=[.05 .05 .05]')
xlabel('time')
ylabel('Average Velocity')

 %% ydot
avgmatD2=[];
time=[];
 for deltaT=1000:1000:runtime
   b2=X+Z;
     avgD2=(sum(b2(1:deltaT/resul)).*resul)/deltaT;
     avgmatD2=[avgmatD2 avgD2];
     time=[time deltaT];
 end
plot(time,avgmatD2,'color', [120 50 150]/255)
title('SprottD: Average Velocity,ICD=[.05 .05 .05]')
xlabel('time')
ylabel('Average Velocity')
 %% zdot

avgmatD3=[];
time=[];
 for deltaT=1000:1000:runtime
   b3=X.*Z+3*Y.^2;
     avgD3=(sum(b3(1:deltaT/resul))*resul)/deltaT;
     avgmatD3=[avgmatD3 avgD3];
     time=[time deltaT];
 end
plot(time,avgmatD3,'color', [120 50 150]/255)
title('SprottD: Average Velocity,ICD=[.05 .05 .05]')
xlabel('time')
ylabel('Average Velocity')


