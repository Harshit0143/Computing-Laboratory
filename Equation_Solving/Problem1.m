
format long
A=[9 3 2 0 7;7 6 9 6 4;2 7 7 8 2;0 9 7 2 2;7 3 6 4 3];
b=[35;58;53;37;39];

x_custom = gauss_partial_pivoting(A,b);
x_inbuilt = A\b;
fprintf("Soluting by in-built MATLAB function A\b: x_inbuilt =\n");
disp(x_inbuilt);
fprintf("Soluting by our function: x_custom = \n");
disp(x_custom);

function x = gauss_partial_pivoting(A, b)
    n = size(A, 1);
    X = [A b];  % Augment A and B
 

    % Forward elimination
    for j = 1:n
        for i = j+1:n  
            if abs(X(i,j)) > abs(X(j,j))
                X([i j],:) = X([j i],:);
            end
        end
        for i = j+1: n  
            f = X(i,j)/X(j,j);
            X(i, j : n+1) = X(i,j:n+1) - f*X(j,j:n+1);
        end
    end

    
    % Back substitution
    x = zeros(n, 1);
    for j = n:-1:1
        x(j) = X(j, n+1)/X(j,j);
        for i = n: -1 : j+1
            x(j) = x(j) - X(j,i)*x(i)/X(j,j);   
        end
    end
end
