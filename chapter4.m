%input a script file, the points from each game are assigned to the
%variable by using the input command
game1=input('Enter the points scored in the first game ');
game2=input('Enter the points scored in the second game ');
game3=input('Enter the points scored in the first game ');
avg_point=(game1+game2+game3)/3;
fprintf('An average of %f points was scored in the three games',avg_point);
%fprintf('text as string %-5.2f additional text', variable_name)
% % marks the spot where the number is inserted within the text
% -5.2f formatting element
% variable_name: the name of the variable whose value is displayed, if it
% has more values, it will dispaly the value in order.


%dis command
yr=[1984 1986 1988 1990 1992 1994 1996];
pop=[127 130 136 145 158 178 211];
tableYP(:,1)=yr';
tableYP(:,2)=pop';
disp('       Year population');
disp('            (millions)');
disp('')
disp(tableYP)

%fpirnt command the output can be formatted. the text and numerical values
%of variables can be intermixed and displayed in the same line.
%\n before the character that will start the new line
%\b backspace \t horizontal tab
fprintf('The problem, as entered, has no solution.\nplease check the input data');
%fprintf('text as string %-5.2f additional test',variable_name)
%- minus sign left-justifies the number within the field
%+plus sign prints a sign character in front of the number
%0(zero) adds zeros if the number is shorter than the field
%fpirntf is vectorized
v=15*1000/3600;
theta=30;
vms=v*1000/3600;
t=vms*sind(300/9.81);
d=vms*cosd(30)*2*t/1000;
fprintf('A projectile shot at %3.2f degrees with a velocity of 4.2f km/h will travel a distance of %g km.\n',theta,v,d);

%save file
vmph=10:10:100;
vkmh=vmph.*1.609;
tbl1=[vmph;vkmh];
f1b=200:200:2000;
fn=f1b.*4.448;
tbl2=[f1b;fn];

%save and load command;
%save file_name var1 var2 and save('file_name','var1','var2')
%load file_name and save('file_name','var1','var2')
%load only ophe  file that are a ro a cloumn or a matrix,(same row or
%column)
%varname=load('file_name')

%import file typing uiimport in the command window
P=100000;
y=input('Please enter the years ');
r=input('Please enter the interest rate ');
M=P*(r./12)./(1-(1+r./12).^-12*y);
T=100000+M;
table=[y',M',T'];
disp('year  Monthly pay Total Pay');
disp(table);

clear, clc
format bank
F=100000; r=4.35; years=10:30;
%convert percent to decimal
r=r/100;
monthly_deposit=F*(r/12)./((1+r/12).^(12*years)-1);
tbl=[years' monthly_deposit'];
disp(' Monthly')
disp(' Years Deposit')
disp(tbl)

%4
r2=12:4:28;
r1=0.7*r2;
S=pi^2*(r2.^2-r1.^2);
V=1/4*pi^2*(r1+r2).*(r2-r1).^2;
tbl=[r2' r1' V' S'];

V=1000;
R2=1.2*R1;
h=[8:2:16];
V=1/3*pi*h.*(R1^2+R2^2+R1*R2);
S=pi*(R1+R2)*sqrt((R2-R1)^2+h^2)+pi*(R1^2+R2^2);




















