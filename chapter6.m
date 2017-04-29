%logical operator examines true/false statment and produces a results
%that is true(1) or flase(0) according to the specific operatpr
% >= greater than or equal to ==equal to ~= : not equal to
%= is the assignment sign
%if two scalars are compared, the result is a scalar 1 or 0. If two array
%are compared, the comparision is done element-by-element, and the result
%is a logical array of the same size with 1s and 0s.

a=5>8;
c=5<8;
y=(6<10)+(8>8)+(5*3==60/4);
b=[15 6 9 4 11 7 14];
c=[8 20 9 2 19 7 10];
d=c>=b;
e=b==c;
C=b~=c;
f=b-c>0;
A=[2 9 4;-3 5 2;6 7 -1];
B=A>=2;
r=[8 12 9 4 23 19 10];
s=r<=10;
t=r(s);
%the previously code is equal to t and w is equal
w=r(r<=10);
% + and / calculate first and the compare 7<8
3+4<16/2;
% &:and |:or ~:not
3&7;
5|0;
~25;
x=[9 3 0 11 0 15];
y=[2 0 13 -11 0 4];
z=x&y;
q=~(x+y);
% parenthese>exponentiation> logical not>~
% multiplication,division>addition,substraction>relational
% operator(><====) >logical and*&)>logical OR(|)>
x=-2;
y=5;
% -5<x<-1;-5<x &x<-1 ~(y<7) ~y<7 ~((y>=8)|(x<-1)) ~(y>=8)|(x<-1)
% and(A,B) = A equivalent A&B 
% or(A,V) is A|B
% not(A) ~A
%xor(a,b) returns true(1) if one operand is true and the other is false
%all(A) returns 1 true if all elements in a vector A are true(nonzero(.
%returns 0(false) if one or more elements are false
%any(A) returns 1 true if any element in a vector A is true.
% find(A) if A is a vector, returns the indice of the non zero element)
% find(A>d) if A is a vector, returns the address of the lements that are
% larger than d
% switch-case statment
% summation:for end loop
n=input('Enter the number of terms ');
s=0;
for k=1:n; 
    s=s+(-1)^k*k/2^k;
end;
fprintf('The sum of the series is :%f',s);
v=[5 17 -3 8 0 -7 12 15 20 -6 6 4 -2 16];
n=length(v);
for k=1:n 
    if v(k)>0 & (rem(v(k),3)==0|rem(v(k),5)==0);
        v(k)=2*v(k);
    elseif v(k)<0 & v(k)>-5
        v(k)=v(k)^3;
    end
end
%while-end loops










