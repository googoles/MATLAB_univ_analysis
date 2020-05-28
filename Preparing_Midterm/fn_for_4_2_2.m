

% syms a [1 3]
% syms x [1 3]


function fn_for_4_2_2(x,y)
% fill in mine

A = [x(1).^2 x(1) 1; x(2).^2 x(2) 1; x(3).^2 x(3) 1]
b = y';

C = [A b];
n = length(b);
for i=1:n-1
    for k=i+1:n
        C(k,:) = -C(k,i)/C(i,i) * C(i,:)+C(k,:);
    end
end

A =C(:,1:n);
b =C(:,n+1);

x(n) = b(n)/A(n,n)
for k = n-1:-1:1

    x(k) = (b(k)-sum(A(k,k+1:n).*(x(k+1:n))))/A(k,k)
end 

