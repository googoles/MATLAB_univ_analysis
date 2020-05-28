function x = lufact(A,b)

n = rank(A);

[L,U] = lufact(A,n)
y = forward(L,b,n);
x = backward(U,y,n);

% A = [2 1 1; -1 2 1; 4 0 4];
% b = [1; -1; 1];
% x = lusolve(A, b)

% M1 = 