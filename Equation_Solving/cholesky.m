format long
n  = 5;
n = 5;
R = randn(n, n);
A = R * R';
while ~all(eig(A) >= 0)
    R = randn(n, n);
    A = R * R';
end

b = randn(n,1);

x = cholesky(A,b);
fprintf("Solution by cholesky Decomposition: x =\n");
disp(x);
x_in = A\b;

fprintf("Solutin by MATLAB in built A\b: x_inbuilt =\n");
disp(x_in);


function x = cholesky(A,b)
   n = length(A);
    for k = 1:n
        for i = 1:k-1
            A(k,i) = (A(k,i) - dot(A(k,1:i-1),A(i,1:i-1)) ) /A(i,i);
        end
        A(k,k) = sqrt( A(k,k)  - dot(A(k, 1:k-1),A(k,1:k-1)) );     
    end
    disp(A);
    % Ly = b;
    % Ux = y
    for i = 1:n
        for j = i+1: n
            A(i,j) = A(j,i);
        end

    end
    y = zeros(n,1);
    y(1) = b(1)/A(1,1);
    for i = 2 : n
        y(i) = (b(i) - A(i,1:i-1)*y(1:i-1))/A(i,i);
    end
    x = zeros(n,1);
    x(n) = y(n)/A(n,n);
    for i = n-1 : -1 : 1
        x(i) = (y(i) - A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
end 
