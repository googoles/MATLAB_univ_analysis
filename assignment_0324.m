f = ' exp(x) - sin(x)'
x = -4; y = eval(f)
% x = [-4 -2];
x = -2; y = eval(f)
% fzero(f,x) % 


f = 'x.*cos(x) - 2.*x.^2 + 3.*x - 1'
% x = [1.2 1.3]
x = 1.2; y = eval(f)
x = 1.3; y = eval(f)
% f(1.2)*f(1.3) < 0 => 미분가능
% fzero(f,x)

f = 'log(x-1) + cos(x-1)'
% % f = log
x = 1; y = eval(f);
x = 2; y = eval(f);
% x = [1 2] % 존재하지 않음
% fzero(f,x)

p = [1 -1 5];
x = -10 : 1 : 10;
y = polyval(p,x);
plot(x,y)
roots(p)



x = -1 : 0.1 : 1;
% t1 = x
% t2 = 2*x.^2 - 1;
% t3 = 4*x.^3 - 3*x;
% t4 = 8*x.^4 - 8*x.^2 + 1;
t1 = [1 0];
t2 = [2 0 -1];
t3 = [4 0 -3 0];
t4 = [8 0 -8 0 1];
r1 = roots(t1);
r2 = roots(t2);
r3 = roots(t3);
r4 = roots(t4);
y1 = polyval(t1,x);
y2 = polyval(t2,x);
y3 = polyval(t3,x);
y4 = polyval(t4,x);
plot(r1,zeros(size(r1)),'x','MarkerSize',10)
hold on
plot(r2,zeros(size(r2)),'^','MarkerSize',10)
hold on
plot(r3,zeros(size(r3)),'*','MarkerSize',10)
hold on
plot(r4,zeros(size(r4)),'+','MarkerSize',10)
hold on
plot(x,y1,'r--')
hold on
plot(x,y2,'b:')
hold on
plot(x,y3','k-.')
hold on
plot(x,y4,'m')
grid on
legend('x','2x^2-1','4x^3-3x','8x^4-8x^2+1')

[X,Y] = meshgrid(-3:0.25:3);
Z = - exp(X).^2 - exp(Y).^2
contour(X,Y,Z)