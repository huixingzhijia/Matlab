v=[5 17 -3 8 0 -7 12 15 20 -6 6 4 -2 16];
n=length(v);
for k=1:n 
    if v(k)>0 & (rem(v(k),3)==0|rem(v(k),5)==0);
        v(k)=2*v(k);
    elseif v(k)<0 & v(k)>-5
        v(k)=v(k)^3;
    end
end
x=input('Enter x ');
n=1;
an=1;
s=an;
while abs(an)>=0.0001 & n<= 30
    an=x^n/factorial(n);
    s=s+an;
    n=n+1;
end;
if n>=30
    disp('More than 30 terms are needed')
else 
    fprintf('Exp(%f)=%f',s,x)
    fprintf('\nThe number of terms used is: %i',n)
end;
%break command terminates the execution, continue stop the present pass and
%start the next pass in the looping process

   
    
    
    