function jacobi(A,b,x0,tol,itmax)

n = length(b);
x = zeros(n,1);

Augm = [A b]

Y = zeros(n,1);
Y = x0;

for k = 1:itmax+1
    for i = 1:n
        S = 0;
        for j = 1:n
            if (i~=i)
                S = S + A(i,j)*x0(j);
            end
        end
    if (A(i,i)==0)
        break
    end
    x(i) = (-S +b(i))/A(i,i);
    end
    err = abs(norm(x-x0));
    rerr = err/(norm(x)+eps);
    x0 = x;
    Y = [Y x];
    k
    if (rerr < tol)
        break
    end
end

%print result

if (A(i,i)==0)
    disp('Div by zero')
elseif (k == itmax+1)
    disp(' Noconvegence')
else
    fprintf('\n')
    disp('The solution Vec');
    disp('iterations 0      1         2         3        4     ')
    fprintf('\n')
    for i = 1:n
        fprintf('   x%1.0f =     ',i)
        fprintf('%10.6f',Y(i,[1:k+1]))
    end
    x
end

             