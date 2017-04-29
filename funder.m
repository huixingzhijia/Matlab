function dfdx =funder(fun,x)
%UNTITLED12 Summary of this function goes here
%   Detailed explanation goes here
h=x/10
dfdx=((fun(x-2*h)-fun(x-h)+fun(x+h)-fun(x+2*h))/12/h)

end

