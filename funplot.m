function xyout=funplot(fun,a,b)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
x=linspace(a,b,100);
y=fun(x);
xyout(1,1)=a;
xyout(2,1)=(a+b)/2;
xyout(3,1)=b;
xyout(1,2)=y(1);
xyout(2,2)=fun((a+b)/2);
xyout(3,2)=y(100);
plot(x,y)
xlabel('x'),ylabel('y')


end

