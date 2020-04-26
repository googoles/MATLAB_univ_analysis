function lecture_0409(f,a,b,err,n) % false position 가위치법   
disp('-------------------------------------------------')
disp('k      a          b       c(k)       fc      len')
disp('-------------------------------------------------')
for k = 2:n
fa = feval(f,a); fb = feval(f,b);
c(k) = (a*fb-b*fa)/(fb-fa); % 수업
% c(k) = b - (fb)*((b-a)/(fb-fa));
fc = feval(f,c(k));
len = abs(c(k)-c(k-1));
fprintf('%d %9.5f %9.5f %9.5f %9.5f %9.5f \n', (k-1) ,a,b,c(k), fc, len)
if len<err | abs(fc)<err
        fprintf('Approximate solution = %9.5f \n', c(k))
        break
end
if fa*fc < 0
    b = c(k);
else
    a = c(k);
end
end