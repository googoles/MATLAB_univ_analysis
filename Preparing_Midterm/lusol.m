function lusol

clear all

A = [2 1 1; -1 2 1; 4 0 4];
b = [1;-1;1];
n = rank(A)
[L,U] = lu1(A)
y = forw(L,b,n);
x = backw(U,y,n);

function x=forw(A,b,n)
    x(1) = b(1)/A(1,1);
    for k = 2:n
        x(k) = (b(k)-sum(A(k,1:k-1).*x(1:k-1)/A(k,k));
    end
    x
   
function x = backw(A,b,n)
x(n) = b(n)/A(n,n);
for k = n-1:-1:1
    x(k) = (b(k)-sum(A(k,k+1:n).*x(k+1:n)))/A(k,k);
end
x

function [L,U] = lu1(C)

n = rank(C)
L = eye(n)

for k = 1:n-1
    for i = k+1:n
        L(i,k) = C(i,k)./C(k,k);
        C(i,:) = -L(i,k) * C(k,:)+C(i,:);
    end
end
L;
U=C;