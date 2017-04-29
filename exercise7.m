%user-defined functions and function files
F=chp7one(6);
x=1:2:11;
E=chp7one(x);
H=chp7one([1:2:11]);
a1=4.5;b1=2.25;t1=40;t2=92;alpha=23*e-6;
delta=FtoC(t2)-FtoC(t1);
%an anonymous function is a simple(one-line) user-defined function that is
%defined without creating a separate function file
%name=@(argument list)expression
FA=@(x)exp(x^2)/sqrt(x^2+5);
FA(2)
FB=@(x,y)2*x^2-4*x*y+y^2;
FB(2,3)
%calculate distance between points in polar coordinates
d=@(ra,thetA,rb,thetB)sqrt(ra^2+rb^2-2*ra*rb*cos(thetB-thetA));
d(2,pi/6,5,3*pi/4)
%inline functions using inline command
%name=inline('math expression typed as a string')
%eg:cube=inline('x^3')
%name=inline('mathematical expression','arg1','arg2','arg3')
HA=inline('2*x^2-4*x*y+y^2');
HA(2,3);
ydemo=funplot(@Fdemo,0.5,4)
%using a function name for passing a function into a function function
%variable=feval('function name',argument value)
feval('sqrt',64)
x=feval('sin',pi/6)
grades=[80 75 91 60 79 89 65 80 95 50 81];
[avegrade standeviation]=stat(grades);

disp(' ')
disp('Part (a)')
Func=@(x) x0^2*exp(x);
dxdy=Funder(Func,0.25)
disp(' ')
disp('Part (b)')
Func=@(x0) 3^x/x^2;
dxdy=Funder(Func,2.5)









