A = [ 6 15 55;
      15 55 225;
      55 225 979];
disp(A);
A = cholesky_(A);
disp(A);
function A = cholesky_(A)
    n = length(A);
    for k = 1: n
        for i = 1:k-1
            A(k,i) = (A(k,i) - dot(A(k,1:i-1),A(i,1:i-1)))/A(i,i);
        end
    A(k,k) = sqrt( A(k,k)  - sum(A(k, 1:k-1).^2) );     
    end
    for i = 1:n
        for j = i+1 :n
            A(i,j) = A(j,i);
        end
    end
end
