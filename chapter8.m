%polynominal,curve fitting, and interpolation
%polynomials are represented by a row vector in which the elemnts are
% the coefficients an,An-1,...a1,a0
%eg: 8x+5 the matlab represent is p=[88 5]
%the vector has to include all the coefficients including the ones that are
%equal to zero
%value of a polynomial. polyval(p,x)
% f(x)=x^5-12.1*x^4+40.59*x^3-17.015*x^2-71.95*x+35.88
p=[1 -12.1 40.59 -17 -71.95 35.88];
polyval(p,9)
x=-1.5:0.1:6.7;
y=polyval(p,x);
plot(x,y);
%multiplication
% c=conv(a,b) c is a vector of the coefficients of the polynomial that is
% the product of the multiplication, a and b are the vectors of the
% coefficients of the polynomials that are being multiplied
p1=[3 15 0 -10 -3 15 -40];
p2=[3 0 -2 -6];
p=[0 0 0 p2];
p
pm=conv(p1,p)
%division
%[q,r]=deconv(u,v), q is a vector with the coefficients of the quotient
%polynomial, r is a vector with the coefficients of the remainder
%polynomial, u is numerator, v is denominator
%2x^3+9x^2+7x-6 dividing x+3 is 
u=[2 9 7 -6];
v=[1 3];
[a,b]=deconv(u,v)
%derivatives of polynomials

f1=[3 -2 4];
f2=[1 05];
%derivative of a single polynomials
%k is a vector with the coefficients of the polynomial that is the
k=polyder(f1)
%derivative of multiplication of f1 and f2
d=polyder(f1,f2)
%derivative of a quotient of two polynomials. n is the numerator and d is
%the denominator
[n d]=polyder(f1,f2)
%curve fitting/regression analysis. many types of
%functions(linear,polynomial, power,exponential)
% when n(xi,yi) are given, it is possible to write a polynomial of degree
% n-1 that passes through all the points.
%the common method of finding the best fit to data points is the method of
%least squares.The coefficients of the polynomial are determined by
%minimizing the sum of the squares of the resuduals at all the data points
%p=polyfit(x,y,n) p is the vector of the coefficients of the polynomial
%that fits the data, x is the horizontal coodinates, y is vertical
%coordinates n is the degree of the polynomial
x=[0.9 1.5 3 4 6 8 9.5];
y=[0.9 1.5 2.5 5.1 4.5 4.9 6.3];
p=polyfit(x,y,3);
xp=0.9:0.1:9.5;
yp=polyval(p,xp);
plot(x,y,'o',xp,yp)
xlabel('x');
ylabel('y');
%curve fitting with functions other than polynomials
%y=bx^m(power function)  polyfit function
%form:p=polyfit(log(x),log(y),1)
%y=be^mx(exponential function): p=polyfit(x,log(y),1)or
%p=polyfit(x,log10(y),1)
%y=mln(x)+b(logarithmic function: p=polyfit(log(x),y,1) or
%p=polyfit(log10(x),y,1)
%y=1/(mx+b) (reciprocal function) :p=polyfit(x,1./y,1)
%all these function can be easily fitted to given data with the polyfit,
%this can be done by fitting with a linear polynomial y=mx+b
t=0:0.5:5;
w=[6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];
p=polyfit(t,log(w),1);
m=p(1);
b=exp(p(2));
tm=0:0.1:5;
wm=b*exp(m*tm);
plot(t,w,'o',tm,wm);
%checking the linearity
%plot(t,log(w));
%spline interpolation
%yi=interp1(x,y,xi,'method') the last one is 1 not letter L
%yi is the interpolated value, x is independent variable, y is dependent
%variable, xi is the horizontal coordinate corresponding to yi , method is optional
%method can be nearest, linear(default), spline,pchip
x=0:1:5;
y=[1 -0.6242 -1.4707 3.2406 -0.7366 -6.3717];
xi=0:0.1:5;
yilin=interp1(x,y,xi,'linear');
yispl=interp1(x,y,xi,'spline');
sipch=interp1(x,y,xi,'pchip');
yfun=1.5.^xi.*cos(2*xi);
subplot(1,3,1)
%three plots are on same plot 
plot(x,y,'o',xi,yfun,xi,yilin,'--');
subplot(1,3,2)
plot(x,y,'o',xi,yfun,xi,yispl,'--');
subplot(1,3,3)
plot(x,y,'o',xi,yfun,xi,sipch,'--');
%the basic fitting interface. selecting tools--basic fitting--selecting all
%the parameter including equation, parameter and residual plot
r=2000;
t=1:10;
v=[9.4 7.31 5.15 3.55 2.81 2.04 1.26 0.97 0.74 0.58];
p=polyfit(t,log(v),1);
c=-1/(r*p(1));
vo=exp(p(2));
tplot=0:0.1:10;
vplot=vo*exp(-tplot./(r*c));
plot(t,v,'o',tplot,vplot);

%2
v=[-0.001 0.051 -0.76 3.8 -1.4];
x=-5:0.01:4;
y=polyval(v,x);
plot(x,y)

%4
a=[1 1.4];
b=[1 -0.4];
c=[1 0];
d=[1 0.6];
e=[1 -1.4];
m=conv(a,b);
n=conv(m,c);
q=conv(n,d);
s=conv(q,e);
x=-1.5:0.1:1.5;
y=polyval(s,x);
plot(x,y)

%5
a=[-0.6 0 7.7 -8 -24.6 48];
b=[-0.6 0 4.1 -8];
e=deconv(a,b);
e
%6
c=[1 -6 13 -12 4];
e=[1 -3 0 2];
m=deconv(c,e);
m

%22
x=[-5 -3.4 -2 -0.8 0 1.2 2.5 4 5 7 8.5];
y=[4.4 4.5 4 3.6 3.9 3.8 3.5 2.5 1.2 0.5 -0.2];
p=polyfit(x,y,1);
subplot(1,4,1);
y1=-0.3573*x+3.4341;
plot(x,y,'o',x,y1);
p1=polyfit(x,y,2);
y2=-0.029*x.^2-0.2533*x+3.8291;
subplot(1,4,2);
plot(x,y,'o',x,y2);
p4=polyfit(x,y,4);
y4=p4(1)*x.^4+p4(2)*x.^3+p4(3)*x.^2+p4(4)*x+p4(5);
subplot(1,4,3);
plot(x,y,'o',x,y4);
p8=polyfit(x,y,8);
y8=p8(1)*x.^8+p8(2)*x.^7+p8(3)*x.^6+p8(4)*x.^5+p8(5)*x.^4+p8(6)*x.^3+p8(7)*x.^2+p8(8)*x+p8(9);
subplot(1,4,4);
plot(x,y,'o',x,y8);










































































