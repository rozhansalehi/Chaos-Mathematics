%function 

A=40;
x1=0.1 : 0.001 : 0.2;
y1=0.8 + A*(x1-0.1).*(0.2-x1);

x2=0.8 :0.001 :0.9;
y2=0.1 + A*(x2-0.8).*(0.9-x2);
x3=0.1:0.001:0.9 ;
y3=x3;

plot(x1,y1,x2,y2,x3,y3)