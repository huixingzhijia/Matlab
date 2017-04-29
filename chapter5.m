
%two dimensional plots
%line specifiers:specifiers that define the type and color of the line and
%markers, propertyvalue can be used to specify the line width, and a
%marker;size and edge and fill colors
%solid:- dash:-- dotted:: dash-dot:-.
%red:r green,blue cyan magenta yellow and black and white first letter
%marker:different signts 
%plot(x,y,'line specifiers','propertyname',propertyvalue)
x=[1:20];
y=[20:39];
% green dotted line connects the points that marked with diamond markers
%plot(x,y,'g:d');
plot(x,y,'o');
plot(x,y,'-mo','LineWidth',2,'MarkerSize',12,'MarkerEdgeColor','g','MarkerFaceColor','y');
yr=[1988:1994];
sle=[8 12 20 22 18 24 27];
plot(yr,sle,'--r','linewidth',2,'markersize',12);
%plot a function can be achived by susing plot or fplot
x=[-2:0.01:4];
y=3.5.^(-0.5*x).*cos(6*x);
plot(x,y);

%fplot command 
%fplot('function',limits,'line specifiers')
%limits: specify the domain of x[xmin,xmax] or y limit
%[xmin,xmax,ymin,ymax]
%line specifier is the same as plot command
fplot('x^2+4*sin(2*x)-1',[-3 3]);

%plotting a function and its derivatives,multiple plots in same plot
x=[-2:0.01:4];
y=3*x.^3-26*x+6;
yd=9*x.^2-26;
ydd=18*x;
plot(x,y,'-b',x,yd,'--r',x,ydd,':k');

%second methond:using hold on and hold off 
x=[-2:0.01:4];
y=3*x.^3-26*x+6;
yd=9*x.^2-26;
ydd=18*x;
plot(x,y,'-b');
hold on;
plot(x,yd,'--r');
hold on;
plot(x,ydd,':k');
hold off;

%using the line command;
%line(x,y,'propertybame',propertyvalue)
%format the line command almost same with the plot command
% the major difference between line and plot is plot start a new plot every
% time it is executed, while the line command adds lines to a plot that
% already exist
line(x,y,'linestyle','--','color','r','marker','o');
x=[-2:0.01:4];
y=3*x.^3-26*x+6;
yd=9*x.^2-26;
ydd=18*x;
plot(x,y,'linestyle','-','color','b');
line(x,yd,'linestyle','--','color','r');
line(x,ydd,'linestyle',':','color','k');

%formatting a plot usin commands
%xlabel('text as string') ylabel('text as string') title('text as tring')
%text(x,y,'test as string') place the text positioned at the point with the
%coordinates x,y. gtext('text as string')
%legend('string','string',.....pos) post is an optioanl number specifies
%where in the figure the legend is to be placed.
% a single character can be displayed as subscript or a superscript by
% typing _ or ^ in front of the character
%greek can be typing \name of the letter eg: \phi

x=[10:0.1:22];
y=95000./x.^2;
xd=[10:2:22];
yd=[950 640 460 340 250 180 140];
plot(x,y,'-','linewidth',1.0);
xlabel('distance(cm)');
ylabel('intensity(lux)');
title('\fontname{Arial}light Intensity as a function of distance','fontsize',14);
axis([8 24 0 1200]);
text(14,700,'comparison between teory and experiment.','Edgecolor','r','linewidth',2);
hold on;
plot(xd,yd,'ro--','linewidth',1.0,'markersize',10);
legend('Theory','Experiment',0);
hold off;

%ploting with logorithmic axes
%semilogy(x,y) plots y versus x with a log(10) scale for the y axis and
%linear scale for the x axis
% semilogx(x,y) plots y versus x with a log910) scale for the x axis and
% linear scale for the y axis
% loglog(x,y) 
x=linspace(0.1,60,1000);
y=2.^(-0.2*x+10);
plot(x,y);
semilogy(x,y);
semilogx(x,y);
loglog(x,y);

%plot error bar
%errorbar(x,y,e) e is the value of the error at each point
xd=[10:2:22];
yd=[950 640 460 340 250 180 140];
yderr=[30 20 18 35 20 30 10];
errorbar(xd,yd,yderr);
ylabel('Distance(cm)');
xlabel('Intensity(lux)');
%errorbar(x,y,d,u) d:upper-bound value of the error u:lower-bound value of
%the error
%bar(x,y) horizontal bar:barh staris plot stairs(x,y) stem plot: stem(x,y)
%pie plot: pie(x,y) histogram: hist(y)
fplot('x*cos(x)',[0,10]);
%use figure command to display multiple figures
figure;
fplot('exp(-0.2*x)*cos(x)',[0,10]);

%exercise 1
x=[-3:0.01:5];
y=((x+5).^2)./(4+3*x.^2);
plot(x,y);

%2
x=[-5:0.01:10];
y=(5*sin(x)./(x+exp(-0.75.*x)))-3*x./5;
plot(x,y);

%4
x=[-2:0.01:2];
y=sqrt(abs(cos(3*x)))+sin(4*x).^2;
%plot(x,y);
fplot('sqrt(abs(cos(3*x)))+sin(4*x).^2',[-2 2]);
%6
t=[-2*pi:0.01:2*pi];
x=1.5*sin(5*t);
y=1.5*cos(3*t);
plot(t,x,'-b');
hold on ;
plot(t,y,'--r');
axis([-2 2 -2 2]);
hold off;

%8
x=-2:.1:4;
f=x.^3 - 2*x.^2-10*sin(x).^2-exp(0.9*x);
fp=3*x.^2-4*x-20*sin(x).*cos(x)-0.9*exp(0.9*x);
plot(x,f,x,fp,'--')
title('f(x)=x^3-2x^2-10sin^2x-e^{0.9x}')
legend('f(x)','f ''(x)')
xlabel('x-->');
ylabel('y-->');
x=-2:.1:4;
f=x.^3 - 2*x.^2-10*sin(x).^2-exp(0.9*x);
fp=3*x.^2-4*x-20*sin(x).*cos(x)-0.9*exp(0.9*x);
plot(x,f,x,fp,'--')
title('f(x)=x^3-2x^2-10sin^2x-e^{0.9x}')
legend('f(x)','f ''(x)')
xlabel('x-->')
ylabel('y-->')

%8
t=[-30:0.01:-1.6];
t1=[-0.6:0.01:40];
x=3*t./(1+t.^3);
x1=3*t1./(1+t1.^3);
y=3*t.^2./(1+t.^3);
y1=3*t1.^2./(1+t1.^3);
plot(x,y,x1,y1);

%10
r=1.5;
t=0:0.01:4*pi;
x=r*(t-sin(t));
y=r*(1-cos(t));
plot(x,y);

%12
x=-300:0.01:300;
y=693.8-68.8*cosh(x/99.7);
plot(x,y);

%16
t=0:0.01:20;
r=20+30*(1-exp(-0.1*t));
theta=pi*(1-exp(-0.2*t));
polar(theta,r);
title('Squirrel Trajectory (m)');

%18
t=0:0.01:8;
x=0.41*t.^4-10.8*t.^3+64*t.^2-8.2*t+4.4;
v=0.41*4*t.^3-10.8*3*t.^2+64*2*t-8.2;
a=0.41*4*3*t.^2-10.8*3*2*t-64*2;
subplot(3,1,1);
plot(t,x);
subplot(3,1,2);
plot(t,v);
subplot(3,1,3);
plot(t,a);
xlabel('Time (s)');












































