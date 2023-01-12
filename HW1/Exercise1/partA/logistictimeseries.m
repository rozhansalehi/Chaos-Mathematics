function x= logistictimeseries (A ,initialcondition ) 
x(1)=initialcondition;
for n= 1:99;
    x(n+1) = A * x(n) * (1-x(n));
   end
 
end


