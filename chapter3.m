% A and B are matrix, if A and B are two matrices, the operation A*B can
% be carried out only if the number of columns in matrix A is equal to the
% number of rows in Matrix B
%two vectors can be multiplied only if they have the same number of
%elements and one is a row vector and the other is a column vectors.(linera
%algebra rules
%the result matrix, the column is same as B the rows is like A
%inverse the matrix ix inv(A) or A^-1
A=[1,2,5];
B=A';
C=A*B;
D=B*A;
% matlab left division is AX=B---X=A\B
%matlab right division XC=D---X=D/C
%element by element operations .* multiple ./ right division .\ left
%division .^ exponentiation
%a.*b=[a1b1+a2b2+a3b3+a4b4]  a=[a1 a2 a3 a4] b=[b1 b2 b3 b4]
%element by element calculations are very useful for calculation the value
%of a function at many values of its argument

%2
x=[-3:1:3];
y=(x.^2-2)./(x+4);

%4
t=[0:1:8];
y=20*t.^(2/3)./(t+1)-((t+1).^2)/exp(0.38*t+5)+2./(t+1);

%6
t=[0:0.05:0.35];
g=9.81;
k=0.0018;
pal=2700;
pgl=1260;
r=0.2;
V=4/3*pi*r^3;
vt=sqrt(V*(pal-pgl)*g/k)*tan(sqrt(V*(pal-pgl)*g*k).*t/(V*pal));

%8

x=23.5;
y=-17;
z=6;
u=[x,y,z];
u1=sqrt(x^2+y^2+z^2);

%10
v=[3 -2 4] ;
u=[5 3 -1];
f=v.*u;
ve=v*u';
m=v'*u;

%12
v=[2:2:10];
a=v.^-1;
b=(v.^2).^-1;
c=v-1;
d=v./v;

%14
x=[1:2:9];
y=[2:3:14];
z=(x.*y.^2)./(x+y);
z1=x.*(x.^2-y)-(x-y).^2;

%16
a=[2,0,0];
b=[10,3,0];
c=[4,6,0];

rAB =b-a; 
rAC= b-c;
Area = sqrt(sum(cross(rAB,rAC).^2));
 

%18
%function [result]=cross_product(V1,V2)
%CROSS_PRODUCT calculates the cross product of two vectors.
%V1=[v1x,v1y,v1z];
%V2=[v2x,v2y,v2z];
%i=(v1y*v2z - v2y*v1z);
%j=(v1z*v2x - v2z*v1x);
%k=(v1x*v2y - v2x*v1y);
%result=i+j+k;

r1=[3 -2 1];
r2=[1 2 -4];
%dot=r1*r2
theta=cosd(dot(r1,r2)/(sqrt(dot(r1,r1))*sqrt(dot(r2,r2))));
theta1=theta/pi*180;

%22
x=[5 3 2 1.5 1.1 1.001 1.00001];
y=(x.^2-1)./(x-1);
format long;

%24
n=0:10;
n=0:20;
n=0:50;
i=sqrt(12)*sum((-3).^-n./(2*n+1));

%26
g=9.81;
theta=75/180*pi;
v0=110;
x=[0:200];
y=x.*tan(theta)-g/(2*v0^2*cos(theta)^2)*x.^2;
z=max(y)

%30
u=[0:025:1];
k=0.25;
p=k.*u.*(1-u)./(k+u);


%32
A=[3 1.5 1 0.5 4;-2 1 4 -3.5 2; 6 -3 2 2.5 1; 1 4 -3 0.5 -2;3 2 -1 1.5 -3];
B=[-11.75 19 -23 -1.5 -3.5]';
C=A\B;


%31
D=[3 -2 5;-4.5 2 3; 5 1 -2.5];
E=[7.5;5.5; 2.5];
M=D\E;





























