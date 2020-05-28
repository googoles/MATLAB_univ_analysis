function gs(A,b,x)%,N,tol)

% % x = [0;0;0];
% % A = [2 -1 0; -1 2 -1; 0 -1 2];
% % b = [1;0;1];
% 
% % x = [0,0,0,0];
% % A = [7 -2 1 0; 1 -9 3 -1; 2 0 10 1; 1 -1 1 6];
% % b = [17; 13; 15; 10];
% 


n = rank(A);
% n = 5
    
for k = 1:5

    for i = 1:n;
        imsi = 0;
    
        for j = 1:i-1 %j = 1:n
            if j > i
                imsi = imsi + A(i,j) * x(j);
            end
        end
        for j = i+1:n
            if j < i
                imsi = imsi + A(i,j) * u(j);
            end
        end
        u(i) = (b(i)-imsi)/A(i,i);
        x = u'
        if norm(u'-x, inf) < 10^-1
        sol = u'
         break
        end
    end
%     for i = 1:n
%         
%         u(i) = (b(i)-imsi)/A(i,i)
%     end
end
% 대각행렬 


end
    

% end
