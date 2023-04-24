A =    [5     3     1     1     4;
       3     2     2     2     3;
       1     4     2     5     3;
       2     4     3     1     2;
       3     2     3     5     3];

disp(A);
A = decompose(A);
disp(A);
function A = decompose(A)
    n = length(A);
    for j  =  2 : n
        A(1,j) = A(1,j)/A(1,1);
    end
    for j =  2: n
        for i = j:n 
            A(i,j) = A(i,j) - A(i,1:j-1)*A(1:j-1,j);
        end
    
        for k = j+1:n
            A(j,k) = (A(j,k)-A(j, 1:j-1)*A(1:j-1,k))/A(j,j);
        end
    end
end
