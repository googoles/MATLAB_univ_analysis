function falsep(f,a,b,eps1,n)

a0 = a; b0 = b;
iter = 0;
fa = feval(f,a);
fb = feval(f,b);
c = (fa*a - fb*b)/(fa-fb);
fc = feval(f,c);
disp('it  a       b           c       |f(c)|     |b-a|')
disp('-------------------------------------------')
fprintf('\n')
if (fb*fa <= 0)
    while (abs(fc)>eps1) & (abs(b-a) > eps1) & (iter<=n) & ((fb-fa)~=0)
        fc = feval(f,c);
        fprintf('%2.0f, %12.4f %12.4f %12.6f %12.6f %10.6f %10.6f\n', iter, a,b,c,fc,abs(b-a))
        if (fc*fb < 0)
            b = c; fb = fc;
        end
        if (fc*fb > 0)
            a = c; fa = fc;
        end
        iter = iter+1;
        c = (fb*a-fa*b)/(fb-fa);
    end
    if iter > n
        fprintf('Approx solution: %12.4f', c)
    end
    if fb-fa == 0
        disp('div by zero')
    end
else
    disp('nono')
end
% fplot(f,[a0 b0])
% xlabel('x');ylabel('f(x)'); grid
