%% Average Velocity

Sprott B 
runtime=50000;
resul=0.01;
ICB=[0.5 0.5 0.5];
Er = 1e-5;

options=odeset('RelTol',Er,'AbsTol',[Er Er Er]);
[t,v]=ode15s(@sprottB,[0:resul:runtime],ICB ,options);

X=v(:,1);
Y=v(:,2);
Z=v(:,3);

%% xdot

avgmatB1=[];
time=[];
 for deltaT=1000:1000:runtime
   b1=Y.*Z;
     avgB1=(sum(b1(1:deltaT/resul))*resul)/deltaT;
     avgmatB1=[avgmatB1 avgB1];
     time=[time deltaT];
 end
plot(time,avgmatB1,'color', [120 50 150]/255)
title('SprottB: Average Velocity,ICB=[.5 .5 .5],IC=[0 5 0]')
xlabel('time')
ylabel('Average Velocity')

 %% ydot
avgmatB2=[];
time=[];
 for deltaT=1000:1000:runtime
   b2=X-Y;
     avgB2=(sum(b2(1:deltaT/resul)).*resul)/deltaT;
     avgmatB2=[avgmatB2 avgB2];
     time=[time deltaT];
 end
plot(time,avgmatB2,'color', [120 50 150]/255)
title('SprottB: Average Velocity,ICB=[.5 .5 .5],IC=[0 5 0]')
xlabel('time')
ylabel('Average Velocity')
 %% zdot

avgmatB3=[];
time=[];
 for deltaT=1000:1000:runtime
   b3=1.-x.*y;
     avgB3=(sum(b3(1:deltaT/resul))*resul)/deltaT;
     avgmatB3=[avgmatB3 avgB3];
     time=[time deltaT];
 end
plot(time,avgmatB3,'color', [120 50 150]/255)
title('SprottB: Average Velocity,ICB=[.5 .5 .5],IC=[0 5 0]')
xlabel('time')
ylabel('Average Velocity')

