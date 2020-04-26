function newt1(f,df,x0,eps1,n)

y = feval(f,x0);
yp = feval(df,x0);
err = abs(y/yp);
iter = 0;
disp('______________________________________________')
disp('iter     x_n      |f(x_n)|       |x_n-x_(n-1)|  |e_(n+1)|/|\e_n|')
for k=1:n
    x1 = x0-y/yp;
    err = abs(x1-x0);
    
    
%     x2 = x1-y/yp;
%     x2 = x1-2*y/yp;  % 중근이니까 2곱한다  % 수정 뉴턴법  
    iter = iter+1;
    alpha = 1;
%     ratio = abs(alpha-x2)/abs(alpha-x2);
    ratio = abs(alpha-x1)/abs(alpha-x0); % 수정뉴턴
    x0 = x1;
    y = feval(f,x0);
    yp = feval(df,x0);
    fprintf('%2.0f %12.5f %12.5f %12.5f %12.5f\n',iter,x0,abs(y),err,ratio)
    if err < eps1% || err
        fprintf('Approx.sol = %12.5f\n', x0) 
        break
    end
end

