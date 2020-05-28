% Pivot의 원소가 다른 원소들에 비해 상대적으로 매우 작은 경우 반올림 오차가 개입
% Partial Pivoting 으로 반올림 오차 최소화

function partial_pivot(A,b)

C = [A b]
n = length(b);
for k=1:n-1
    [maxval, p] = max(abs(C(k:n,k)));
    p = p + (k-1);
    imsi = C(k,:);
    C(k,:)=C(p,:);
    C(p,:) = imsi;
    for i = k+1 : n
        L = C(i,k)./C(k,k);
        C(i,:)=-L * C(k,:)+C(i,:)
    end
end

A = C(:, 1:n); b = C(:,n+1);

x(n) = b(n)/A(n,n)
for k = n-1 : -1 : 1
    x(k) = (b(k) - sum(C(k,k+1:n).*x(k+1:n)))/C(n,n)
end

% x(4) = b(4)/A(4,4)
% x(3) = (b(3)-A(3,4)*x(4))/A(3,3)
% x(2) = (b(2)-A(2,3)*x(3)-A(2,4)*x(4))/A(2,2)
% x(1) = (b(1)-A(1,2)*x(2)-A(1,3)*x(3)-A(1,4)*x(4))/A(1,1