function bis(f,a,b,n, eps1, eps2)
% 구간오차, 함수값에대한 구간오차
% f = inline('x^3-x^2-1');
% a = 1;
% b = 2;

fa = feval(f,a);
fb = feval(f,b);

disp('iterationk  a       b           c       |f(c)|     |b-a|')
disp('-------------------------------------------')
for k = 1:n
    
    len = abs(b-a);
    
    
    c =(a+b)/2;
    fc = feval(f,b);
    if len<eps1 | abs(fc) < eps2
        fprintf('Approximate solution = %9.6f \n', c)
        break
    end
%     fc = feval(f,c)
    format rat
    
    fprintf('%d %9.6f %9.6f %9.6f %9.6f %9.6f \n',k,a,b,c,abs(fc),abs(b-a)) % 유효숫자 6자
    
    if fa*fc<0
        b=c;
    else
        a=c;
    end    
end

% while len<10^(-2)
%     len = abs(b-a);
%     
%     
%     c =(a+b)/2;
%     fc = feval(f,b);
%     if len<10^(-2)
%         fprintf('Approximate solution = %9.6f \n', c)
%         break
%     end
% %     fc = feval(f,c)
%     format rat
%     
%     fprintf('%d %9.6f %9.6f %9.6f %9.6f \n',k,a,b,c,len) % 유효숫자 6자
%     
%     if fa*fb<0
%         b=c;
%     else
%         a=c;
%     end  
% end