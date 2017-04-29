%practice
r1=16;
r2=6.2;
r3=12;
r4=9.5;
c1c2 = r1+r2;
c1c3=r1+r3;
c1c4=r1+r4;
c2c3=r2+r3;
c3c4=r3+r4;
e=((c1c2^2+c1c3^2)/(2*c1c2*c1c3));
gama1=acos((c1c2^2+c1c3^2-c2c3^2)/(2*c1c2*c1c3));
gama2=acos((c1c3^2+c1c4^2-c3c4^2)/(2*c1c3*c1c4));
gama3=gama1+gama2;
c2c4=sqrt(c1c2^2+c1c4^2-2*c1c2*c1c4*cos(gama3));
%exercise
a=(14.8^2+6.5^2)/(3.8^2) +55/(sqrt(2)+14);
c=(16.5^2*(8.4-sqrt(70)))/(4.3^2-17.3);
b=(5.2^3-6.4^2+3)/(1.6^8-2)+(13.3/5)^1.5;
e=(2.3^2*1.7)/sqrt((1-0.8^2)^2+(2-sqrt(0.87)));
f=2.34+0.5*2.7*(5.9^2-2.4^2)+9.8*log(51);
x=2.34;
m=2*x^4-6*x^3+14.8*x^2+9.1;
n=exp(2*x)/(sqrt(14+x^2-x));
%chapter1 8
x=8.3;
y=2.4;
g=x^2+y^2-x^2/y^2;
h=sqrt(x*y)-sqrt(x+y)+((x-y)/(x-2*y))^2-sqrt(x/y);
%12
i=sin(4*x);
j=4*sin(x)*cos(x)-8*sin(x)^3*cos(x);
l=cos(2*x);
m=(1-tan(x)^2)/(1+tan(x)^2);
x=pi/9;
%chapter 1 14
alpha=5*pi/8;
beta=pi/8;
z=sin(alpha)*cos(beta);
w=1/2*(sin(alpha-beta)+sin(alpha+beta));

%chapter 1 16
%use rad2deg convert raduis to degree, use deg2rad conver degree to radius
format short;
a=9;
b=18;
c=25;
alpha=rad2deg(acos((a^2+b^2-c^2)/(2*a*b)));
beta=rad2deg(acos((c^2+a^2-b^2)/(2*c*a)));
gamma=rad2deg(acos((c^2+b^2-a^2)/(2*c*b)));
theta=alpha+gamma+beta;

%chapter 1 18
a=200;
b=250;
c=300;
gamma=rad2deg(acos((a^2+b^2-c^2)/(2*a*b)));
r=(1/2)*(a+b-c)*tan(1/2*gamma);
s=1/2*(a+b+c);
ra=(sqrt(s*(s-a)*(s-b)*(s-c)))/s;

%chapter 1 20
x0=8;
y0=3;
z0=-10;
A=2;
B=23;
C=13;
D=-24;
d=abs(A*x0+B*y0+C*z0+D)/sqrt(A^2+B^2+C^2);

%chapter 1 22
a=ceil(4000/52);
%24
m=16*54.95+20*39.95;
n=m*(1+6.25/100);
l=round(n);

%26  the n! use factorial() function
o=factorial(52)/(factorial(5)*factorial(52-5));

%28
V=120;
R=240;
L=0.5;
t=0.003;
I=V/R*(1-exp(-(R/L)*t));

%30
e=lcm(6,26);
a=lcm(6,34);
%32
L=2;
c=300*10^6;
v=5000;
delta=L*(1-sqrt(1-(v^2)/(c^2)));

%34
P=40000;
r=0.055;
t=20;
B=P*((1+r)^t);
t1=1/r*log(B/P);
t2=(t-t1)*365;

%36
po=20*10^(-6);
p=80*10^(-2);
Lp=20*log10(p/po);
Lp1=110;
P1=po*10^(Lp1/20);
r=P1/p;

%38
k=401;
L=3;
r2=5;
r1=3;
T2=20;
T1=100;
q=2*pi*L*k*(T1-T2)/(log(r2/r1));

%40
V=600;
theta=deg2rad(54);
g=32.2;
Tt=2*V*sin(theta)/g;
Xmax=2*V^2*sin(theta)*cos(theta)/g;
Hmax=2*V^2*sin(theta)^2/g;


































