%to create row vector type the element with a space or a comma between the
%element inside
%to create a column vector type the left square brackt, enter the column
%with a semicolon between them
%variable_name=m:q:n   first term is m, spacing is q, the last term is n
%variable_name=linspace(first,last, n) the variable equally spaced
%matrix zero(), ones(), eye();
%transpose vector c=aa';
%vector_name(4)=the element in position k
%vector(:):all the element, matrix(m,n) m rows and n column;
a1=[3,4*2.255,68/16,45,110^(1/3),cos(25/180*pi),0.05];
b2=[25.5;(14*tan(58/180*pi)/(2.1^2+11));factorial(6);2.7^4;0.0375;pi/5];
c3=[32/(3.2^2);sin(35/180*pi)^2;6.1;log(29^2);0.005552;(log(29))^2;133]
a=3.5;
b=-6.4;
rwo=[a,a^2,a/b,a*b,sqrt(a)];
c=linspace(81,12,9);
d=[22.5:-2.5:0];
%10
e=linspace(-21,12,15);
%12
que(9)=7.5;
%14
%create vector vecB that use first element of vector A and last four
%element in the vector B
vecA=[49:-3:10];
vecB=vecA([1:4,11:14]);
%16
A=[linspace(0,30,7);linspace(600,0,7);linspace(0,5,7)];
Anine(1:4,1:6)=9;
%20
Dod(2:3,4:5)=6;
D=linspace(0,0,5);
%22
F=[linspace(0,0,5);zeros(3,2) [1:3;10:-2:6;20:6:32]']

%24
a=[7 2 -3 1 0];
b=[-3 10 0 7 -2];
c=[1 0 4 -6 5];
A=[a;b;c];
B=A';
C=[a(1:3);b(1:3);c(1:3)];
D=[a(3:5);b(3:5);c(3:5)]';

%26
a=9:-3:0;
b=[a a];
c=[a;a];
d=[a' a'];
e=[[a;a;a;a] a'];

%28
v=[15 0 6 -2 -3 -5 4 9 1.8 -0.35 7];
a=[v([2 7:10]); v([3,5:7,2])];
b=[v([3:5,8])' v([10 6 4 1])' v(7:-1:4)'];

%30 
a=[18:-1:13];
b=[12:-1:7];
c=[6:-1:1];
F=[a;b;c];
N=[[18:-1:13];[12:-1:7];[6:-1:1]];
va=[N(:,2)' N(:,4)'];
vb=[N(3,3:6) N(:,2)'];
vc=[N(:,2)' N(:,4)' N(:,6)'];

%32
E=[[zeros(1,4) 2 2 2];[0.7:-0.1:0.1];[2:2:14];[22:-3:4]];
F=[E(2,3:7);E(4,3:7)];
F=E([2,4],[3:7]);
G=E(:,3:5);

%34
M=[[3:2:13];[15:-1:10];[1:1:3] [1:1:3]];
%select the specific rows and columns from the matrix M
A=M([1,2],[2,4,5]);
B=M(:,[1:3,6]);
C=M([1:3],:);
D=M([2,3],5);

%36
v=1:3:34;
M=reshape(v,3,4);
M(2,:)=[];
M(:,3)=[];
N=ones(size(M));

%38
M=[eye(2) zeros(2) ones(2)];
N=[zeros(2) ones(2)];
N(4,:)=1;
F=ones(4,2);
F(1,5)=1;

%40
M=ones(2,2);
A=[ones(2,2) zeros(2,2)];
A=[A A];
B=[zeros(2,2) ones(2,2)];
B=[B B];
A=[A;B];















    
