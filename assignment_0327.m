% ans 1
a1 = 100 : -5 : -100;
disp(a1)
% ans 2

for k=1:1:7
    m = 2.^k;
    disp(m);
end

% ans 3

a = 1;
for j=1:1:6
    a = (-1).^j;
    disp(a)
end

% ans 4
print = 'Enter x value: ';
x = input(print);
if (x >= 1 && x <= 10)
    y = 0;
else if (x >= 11 && x <= 20)
        y = 1;
    end
end
disp(y)

% ans 5
mesg = 'Enter the periodic function: ';
str = input(mesg, 's');
x = -2*pi : 0.1 : 2*pi;
switch str
    case 'sin'
        y = sin(x);
        plot(x,y)
    case 'cos'
        y = cos(x);
        plot(x,y)
    case 'sinh'
        y = sinh(x);
        plot(x,y)
    case 'cosh'
        y = cosh(x);
        plot(x,y)
end
        

