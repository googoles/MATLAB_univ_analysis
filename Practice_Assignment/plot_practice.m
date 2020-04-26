x2 = 0:0.1:2*pi
y2 = sin(x2)
y = cos(x2)
plot(x2,y,'*',x2,y2,'-')


[X,Y] = meshgrid(-3:0.2:3);
Z = X.^2+Y.^2;
mesh(X,Y,Z)
surf(X,Y,Z)
plot3(X,Y,Z)
contour(X,Y,Z)

[X,Y] = meshgrid(-3:1:3);
vx = X;
vy = -Y;

h = quiver(X, Y, vx, vy);
grid;

t = 0:0.1:10*pi;
x = 5*cos(t);
y = 5*sin(t);
z = 5*t;
plot3(x,y,z)
여기부터 0324 과제 / 30일 마감 