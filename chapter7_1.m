grades=[80 75 91 60 79 89 65 80 95 50 81];
%calling for nested function
[avegrade standeviation]=stat(grades);
avegrade
standeviation
%calling for subfunction
[avegrade standeviation]=statsubfunction(grades);
avegrade
standeviation
disp(' ')
disp('Part (a)')
fun=@(x) x^2*exp(x);
dxdy=funder(fun,0.25)
disp(' ')
disp('Part (b)')
fun=@(x) 2^x/x;
dxdy=funder(fun,2)

