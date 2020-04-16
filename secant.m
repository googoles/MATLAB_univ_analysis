function secant(f,x0,x1,eps1,n)
% 
% iter = 0;
% u = feval(f,x0);
% v = feval(f,x1);
% err = abs(x1-x0);
% disp('_______________________________________________')
% disp('iter   xn   f(xn)     f(xn+1)-f(xn)     |xn+1-xn|')
% disp('_______________________________________________')
% fprintf('%2.0f %9.4f %9,4f %9.4f %9.4f\n', iter, x1, v, v-u, err)


% Lecture Code
% % f = inline('x^3-x^2-1')
% x0 = 1;
% x1 = 2;
% eps1 = 10^(-4);

for k = 1:n
y0 = feval(f,x0); y1 = feval(f,x1);

x2 = x1 - y1*(x1-x0)/(y1-y0);

err = abs(x2-x1);
fprintf('%d, %9.5f %9.5f %9.5f %9.5f\n', k, x0, x1,x2, err)
if err < eps1 %(y1-y0) == 0
    fprintf('Approx. sol = %9.4f\n', x2)
    break
end
x0 = x1;
x1 = x2;

end