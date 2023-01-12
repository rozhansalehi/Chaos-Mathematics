%% Average Velocity

Sprott C 
runtime=50000;
resul=0.01;
ICC=[0.5 0.5 0.5];
Er = 1e-5;

options=odeset('RelTol',Er,'AbsTol',[Er Er Er]);
[t,v]=ode15s(@sprottC,[0:resul:runtime],ICC ,options);

X=v(:,1);
Y=v(:,2);
Z=v(:,3);

%% xdot

avgmatC1=[];
time=[];
 for deltaT=1000:1000:runtime
   c1=Y.*Z;
     avgC1=(sum(c1(1:deltaT/resul))*resul)/deltaT;
     avgmatC1=[avgmatC1 avgC1];
     time=[time deltaT];
 end
plot(time,avgmatC1,'color', [120 50 150]/255)
title('SprottC: Average Velocity,ICC=[.5 .5 .5]')
xlabel('time')
ylabel('Average Velocity')

 %% ydot
avgmatC2=[];
time=[];
 for deltaT=1000:1000:runtime
   b2=X-Y;
     avgC2=(sum(b2(1:deltaT/resul)).*resul)/deltaT;
     avgmatC2=[avgmatC2 avgC2];
     time=[time deltaT];
 end
plot(time,avgmatC2,'color', [120 50 150]/255)
title('SprottC: Average Velocity,ICC=[.5 .5 .5]')
xlabel('time')
ylabel('Average Velocity')
 %% zdot

avgmatC3=[];
time=[];
 for deltaT=1000:1000:runtime
   b3=1-x.*y;
     avgC3=(sum(b3(1:deltaT/resul))*resul)/deltaT;
     avgmatC3=[avgmatC3 avgC3];
     time=[time deltaT];
 end
plot(time,avgmatC3,'color', [120 50 150]/255)
title('SprottC: Average Velocity,ICB=[.5 .5 .5]')
xlabel('time')
ylabel('Average Velocity')


