% g = inline('0.4+x-0.1x^2');
% g = inline('4/x');
function fixed(g,x0,tol,n)
iter = 0;
u = feval(g,x0);
err = abs(u-x0);
disp('-----------------------------------------')
disp('k          p1          |p1-p0|')
fprintf('%2.0f %12.4f %12.4f\n',iter+1,x0,err)
while (err>tol) & (iter <= n)
    x1 = u;
    err = abs(x1-x0);
    x0 = x1;
    u = feval(g,x0);
    iter = iter+1;
    fprintf('%2.0f %12.4f %12.4f\n',iter+1,x0,err)
if err < tol
fprintf('Approx Solution: %12.4f',x0)
break
end
end
if (iter>n)
    fprintf('Approx Solution: %12.4f\n',x0)
end