%% Exercise1 - part A
x1 = logistictimeseries(4,0.2);
x2 = logistictimeseries(4 , 0.2000001);

plot(x1,'color', 'b', 'Marker','.')
hold on
plot(x2,'color', 'm', 'Marker','.')
title('logistic time series for two near initial conditions:0.2 & 0.2000001','fontsize',10)
xlabel('n')
ylabel('x_n')
