function lecture_0521(x,y)

% x = [1 2];
% y = [3 7];
% p1 = [1 -x(1)];
% p2 = [1 -x(2)];
% p3 = [1 -x(3)];
n = length(x)
for k = 1:n
    p(k,:) = poly(x(k))
end
lagpoly = 0;
% l1 = p1/(x(1)-x(2));
% l2 = p2/(x(2)-x(1));
% p = l1*y(1)+l2*y(2)
k = 1;
for k = 1:n
pp = [1];
for t = 1:n
    if t ~= k
        pp = conv(pp,p(t,:)/(x(k)-x(t)));
    end
end
L(k,:) = pp


% q = L(1)*y(1)+L(2)*y(2)+L(3)*y(3)
lagpoly = lagpoly + pp*y(k)
end
% l1 = conv(p2,p3)/((x(1)-x(2))*(x(1)-x(3)))
% l2 = conv(p1,p3)/((x(2)-x(1))*(x(2)-x(3)))
% l3 = conv(p1,p2)/((x(3)-x(1))*(x(3)-x(2)))

% q = L(1)*y(1)+L(2)*y(2)+L(3)*y(3)
% L(3,:)
% for k = 1:n
%     q = sum(L(k,:))
% end