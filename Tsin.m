function y=Tsin(x,n);
xr=x*pi/180;
y=0;
for k=0:n-1;
    y=y+(-1)^k*xr^(2*k+1)/factorial(2*k+1);
end;
set(0,'RecursionLimit',100000)
%set ?????
%type the Tsin(150,5) or Tsin(150,7) to test the function
