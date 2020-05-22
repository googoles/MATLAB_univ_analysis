

% x = [2 4 6 8]';
% y = [4 8 14 16]';


function newton_interpolation(x,y)
n = length(x);
D(:,1) = x;
D(:,2) = y;



% for i = 1:n-1
%    
%     D(i,1) = (D(i+1,2)-D(i,2))/(x(i+1)-x(i))
% end

for i = 2:n-1
    for k = 1:n-i
        D(k,i) = (D(k+1,i-1)-D(k,i-1))/(x(k+i)-x(k));
    end
end

if (rem(n,2)==0)
    p = n/2;
    m = n/2;
else
    p = fix(n/2);
    m = fix(n/2)+1;
end
for i = 1:p
    fprintf('%8.2f %8.2f \n',x(i),y(i));
    for k = 1:i-1
        fprintf('%8.5f',D(i-k,2*k-1))
    end
    fprintf('\n')
end
j = p;
for i = m:-1:1
    j = j+1;
    fprintf('%8.2f %8.2f \n',x(i),y(i));
    for k = 1:i-1
        fprintf('%8.5f',D(i-k,2*k-1))
    end
    fprintf('\n')
    for k = 1:i-1
        fprintf('%8.5f',D(i-k+1,2*k-1))
    end
    fprintf('\n')
end




% D(1,4) = (D(2,3) - D(1,3))/(x(3)-x(1))
% D(2,4) = (D(3,3) - D(2,3))/(x(4)-x(2))

% D(1,3) = (D(2,2)-D(1,2))/(x(2)-x(1))