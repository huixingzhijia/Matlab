function [ me sd] = statsubfunction(v)
%this is a subfunctions to calculate the average and the standard deviation
%   Detailed explanation goes here
n=length(v);
me=avg(v,n);
sd=standiv(v,me,n);
    function av=avg(x,num)
        av=sum(x)/num;
 
    function sdiv=standiv(x,xAve,num)
            xdif=x-xAve;
            xdif2=xdif.^2;
            sdiv=sqrt(sum(xdif2)/(num-1));





