function lecture_0502_lu(C,b)

% C = [1 1 1 1; 2 3 1 5; -1 1 -5 3; 3 1 7 -2];

n = rank(C);

L = eye(n);

for k = 1 : n-1
    for i = k+1 : n
        L(i,k) = C(i,k) / C(k,k);
        C(i,:) = -L(i,k) * C(k,:) + C(i,:)
    end
end
L
U = C

x(n) = b(n)/C(n,n)
for k = n-1:-1:1
%     x(k) = (b(k)-A(k,2)*x(2)-A(k,3)*x(3)-A(k,4)*x(4))/A(k,k)-sum(A(k,k+1:n).*x(k+1:n))
    x(k) = (b(k)-sum(C(k,k+1:n).*(x(k+1:n))))/C(k,k)
end

% function만들기

% function [L,U] = lufact(C)