%2
a=6;
b=2;
c=-5;
y=a+b>a-b<c;%0
%-6<c<-2 is -6<-5 is 1 and 1<-2 is false, is different from -6<c &c<-2 
y1=-6<c<-2;%0
y2=b+c>=c>a/b;%0
y3=a+c~=(c+a~=a/b-b);%1
%4
v=[4 -2 -1 5 0 1 -3 8 2];
u=[0 2 1 -1 0 -2 4 3 2];
%w=u.*(u<=v)
disp('or')
% vector w is made of vector u and element larger than v
w=u(u>=v);

%6
TCH=[75 79 86 86 79 81 73 89 91 86 81 82 86 88 89 90 82 84 81 79 73 69 73 79 82 72 66 71 69 66 66];
TSF=[69 68 70 73 72 71 69 76 85 87 74 84 76 68 79 75 68 68 73 72 79 68 68 69 71 70 89 95 90 66 69];
a=length(TCH);
sumtch=sum(TCH);
%calculate the average temperature
average_TCH=sumtch/a;
b=length(TSF);
average_TSF=sum(TSF)/b;
%TCH_above find the values in TCH pr TSF that is greater than average
%using the lenght to count the vector and find function to return the
%position
TCH_above=TCH(TCH>average_TCH);
TSF_above=TSF(TSF>average_TSF);
e=length(TSF_above);
m=length(TCH_above);
TCH_below=find(TCH<average_TCH);
TSF_below=find(TSF<average_TSF);
%both
both=find(TCH==TSF);
h=length(both);
%9 
n=input('Please enter the size of the Pascal matrix to be created: ');
for i=1:n
for j=1:n
A(i,j)=factorial(i+j-2)/(factorial(i-1)*factorial(j-1));
end
end
%8
for j=1:4
for k=1:3
matrix(j,k)=(j+k)/(k^j);
end
end







