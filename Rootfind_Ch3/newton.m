function newton(f,df,x0,eps1,n)

% f = inline('x^3-x^2-1');
% x = 1; 
y = feval(f,x0);

% df = inline('3*x^2-2*x');
yp = feval(df,x0);
err = abs(y/yp);
iter = 0;
disp('______________________________________________')
disp('iter     x_n      |f(x_n)|       |x_n-x_(n-1)|')
for k=1:n
    x1 = x0-y/yp;
    err = abs(x1-x0);
    x0 = x1;
    y = feval(f,x0);
    yp = feval(df,x0);
    iter = iter+1;
    fprintf('%2.0f %12.4f %12.4f %12.4f %12.4f\n',iter,x0,y,yp,err)
    if err < eps1% || err
        fprintf('Approx.sol = %12.4f\n', x1) 
        break
    end
end

