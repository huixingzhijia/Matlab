%three dimensonal plots
%line plots 
%plot(x,y,z,'line specificers','property name',property value)
t=0:0.1:6*pi;
x=sqrt(t).*sin(2*t);
y=sqrt(t).*cos(2*t);
z=0.5*t;
plot3(x,y,z,'k','linewidth',1);
grid on
xlabel('x');
ylabel('y');
zlabel('z');

%mesh and surface plot
%first step is to create a grid in the xy plane that covers the domain of
%the function. the second step is to calculate the value of z at each point
%of the grid. the third step is to create the plot.
x=-1:0.1:3;
y=1:0.1:4;
[x,y]=meshgrid(x,y);
z=x.*y.^2./(x.^2+y.^2);
%mesh(x,y,z)
surf(x,y,z)
xlabel('x');
ylabel('y');
zlabel('z');

[th,r]=meshgrid((0:5:360)*pi/180,0:0.1:2);
z=r.*th;
[x,y]=pol2cart(th,r);
mesh(x,y,z)






