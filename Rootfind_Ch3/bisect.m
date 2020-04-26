function bisect(f,a,b,tol,n) % 함수, 구간초기값, 허용오차, 반복값,

a0 = 1; b0 = b;
iter=0;
u = feval(f,a);
v = feval(f,b); % 구간 초기값 설정
c = (a+b)*0.5;  % 중간값 설정
err = abs(b-a)*0.5; %
disp('_________________________________________________________________')
disp('iter     a           b         c          f(c)      |b-a|/2')
disp('_________________________________________________________________')
fprintf('\n')
if u*v <= 0
    while (err<tol) & (iter<=n)
        w = feval(f,c);
        fprintf('%2.0f %10.4f %10.4f %12.6f %10.6f %10.6f \n', iter, a, b, c, w, err)
        if w*u<0
            b = c;
            v = w;
        end;
        if w*u > 0
            a = c;
            u = w;
        end
        iter = iter+1;
        c = (a+b)*0.5;
        err = abs(b-a)*0.5;
    end;
    if (iter>n)
    fprintf('Approx solution: %9.2f\n', b)
    end
else
    disp(' The method cannot be applied f(a)f(b) > 0')
end


        