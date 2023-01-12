function [y]= baghdadi(A ,B , w1 ,w2 , out)

y=B*tanh(w1*out)-A*tanh(w2*out);
end

