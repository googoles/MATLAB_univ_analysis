% lecture 0423

function gauss_1(f,J,x,eps1,n)

% f = @(x)[x(1)^3+3*x(2)^2-21; x(1)^2+2*x(2)+2];
% J = @(x)[3*x(1)^2 6*x(2); 2*x(1) 2];
% eps1 = 10^(-5);
% x = [1;-1];
disp('______________________________________________')
disp('iter     x_n')
for k = 1:n
    y = feval(f,x);
    yp = feval(J,x);
    x1 = x-yp\y;
    
    err = max(abs(x1-x));
    if err < eps1
        fprintf('Approx Sol: %9.4f, %9.4f\n',x1)
        break
    end
    x = x1;
end

format short