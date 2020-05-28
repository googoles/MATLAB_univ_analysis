function ngaussel(A,b)

n = length(b);
x = zeros(n,1);

augm = [A b]

for k = 1:n-1
    for i = k+1 :n
        m = A(i,k)/A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j)-m*A(k,j);
        end
        A(i,k) = m;
        b(i) = b(i) - m*b(k);
    end
end
x(n) = b(n)/A(n,n);
for i = n-1:-1:1: % backward
    S = S-A(i,j)*x(j);
end
x(i) = S/A(i,i);
end
fprintf(' Transform Matrix C is:')
fprintf('\n')
for i = 1:n
    for j = 1:n
        if (j<i) A(i,j) = 0; end
    end
end
C = [A b];
disp('Solution vector')
x