function [ me sd] = stat(v)
%this is a subfunctions to calculate the average and the standard deviation
%   Detailed explanation goes here
n=length(v);
me=avg(v,n);

    function av=avg(x,num)
        av=sum(x)/num;
    end
    function sdiv=standiv(x,xAve,num)
            xdif=x-xAve;
            xdif2=xdif.^2;
            sdiv=sqrt(sum(xdif2)/(num-1));
    end
sd=standiv(v,me,n);
end

