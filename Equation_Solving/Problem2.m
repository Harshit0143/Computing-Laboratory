% Solving system of linear equations using Doolittle Decomposition
format long
n  = 10;
A=rand(n,n);
b=rand(n,1);
x = Doolittle_solve(A,b);
fprintf("Solutin by Doolittle's Decomposition: x =\n");
disp(x);
x_in = A\b;

fprintf("Solutin by MATLAB in built A\b: x_inbuilt =\n");
disp(x_in);


function [L ,U] = decompose(A)

    n = size(A,1); 
    L = eye(n); % L is the lower triangular matrix, whose diagonal elements are unity
    U = zeros(n);   % U is the upper triangular matrix

    % As per definition, we aim to obtain an L and U, such that LU=A
    for j = 1:n
        for i = j:n
            U(j,i) = A(j,i) - L(j,1:j-1) * U(1:j-1,i);
        end
        for i = j+1:n
            L(i,j) = (A(i,j) - L(i,1:j-1) * U(1:j-1,j)) / U(j,j);
        end
    end
end
function x = Doolittle_solve(A,b)
    n = size(A,1);
    [L,U] = decompose(A);
    d = zeros(n,1);
    x = zeros(n,1);

    % Now we aim to obtain d, by solving Ld=b
    % This can be achieved by forward substitution, since L is lower triangular 
    for i = 1 : n
    d(i) = b(i);
        for j = 1:i-1
            d(i) = d(i)  - L(i,j)*d(j);
        end
    end

    % We shall obtain x by solving Ux=d
    % This can be achieved by simple backward substitution since U is upper triangular
    for i= n:-1:1
        x(i) = d(i);
        for j=n:-1:i+1
            x(i) = x(i)  - U(i,j)*x(j);
        end
        x(i)=x(i) / U(i,i);
    end
   
end
