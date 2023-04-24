A = randi(5,5);
disp(A);
A = decompose(A);
disp(A);
function A = decompose(A)
    n = length(A);
    for i = 1:n
        for j = i+1:n
            f = A(j,i)/A(i,i);
            A(j, i+1:n) = A(j, i+1:n)  - f*A(i,i+1:n);
            A(j,i) = f;
        end
    end
end
