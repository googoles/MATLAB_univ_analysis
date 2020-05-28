function gauss(A,b)
C = [A b];
n = length(b);
for i=1:n-1
    for k=i+1:n
        C(k,:) = -C(k,i)/C(i,i) * C(i,:)+C(k,:);
    end
end

A =C(:,1:n)
b =C(:,n+1)

x(n) = b(n)/A(n,n)
for k = n-1:-1:1
%     x(k) = (b(k)-A(k,2)*x(2)-A(k,3)*x(3)-A(k,4)*x(4))/A(k,k)-sum(A(k,k+1:n).*x(k+1:n))
    x(k) = (b(k)-sum(A(k,k+1:n).*(x(k+1:n))))/A(k,k)
end 