% x = [1 1.5 2 2.5 3];
% y = [1 3 7 10 15];
%연 2 
% 
% x = [1 2 3 4 5];
% y = [3 4 3 9 1];

%연 6

% x = [3.0 4.5 7.0 9.0];
% y = [2.5 1.0 2.5 0.5];

% 연 7

x = linspace(0,3,11)
y = inline('cos(x^2)')

n = length(x);

for i = 1:n-1
    h(i) = x(i+1) - x(i);
end

for i = 1:n-1
    b(i) = (y(i+1)-y(i))/h(i);
end
b'