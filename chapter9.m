%chapter9
% solving an equation with one variable
%x=fzero(function,x0) x is the solution, function is the function to be
%solved, x0 a value of x close to where the function crosses the axis.
%solving a nonlinear equation x*e^-x=0.2
fplot('x*exp(-x)-0.2',[0 8]);
%from the plot we can see that there are two solution,one is between 0 and
%1, the other is between 2 and 3, if the solution can't be found, NaN is
%assigned

x1=fzero('x*exp(-x)-0.2',0.7);
F=@(x)x*exp(-x)-0.2;
z=fzero(F,2.8);
%[x fval]=fzero(function,x0) assigns the value of the function at x to the
%variable fval, x=fzero(function,x0,optimset('display','iter')) displays
%the output of each iteration during the process of finding the solution

%finding the local minimum or maximum of a function
%x=fminbnd(function,x1,x2) the value of x where the function has a minimum,
%x1 and x2 is the interval
[x fval]=fminbnd('x^3-12*x^2+40.25*x-36.5',0,8);
%the minimum is at x=0, the value of the function at this point is
%-36.5(fval)
%the fminbnd can also be used to find max, this is done by mutiple the
%equation by -1

%numerical intergration
%q=quad(function,a,b) a and b the integration limit, function is the
%function to be integrated.
%also same as q=quadl(function,a,b) 
q=quad('x.*exp(-x.^0.8)+0.2',0,8);














