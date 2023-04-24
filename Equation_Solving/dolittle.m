format long
n  = 10;
A=rand(n,n);
b=rand(n,1);
x = dolittle_(A,b);
fprintf("Solutin by Doolittle's Decomposition: x =\n");
disp(x);
x_in = A\b;

fprintf("Solutin by MATLAB in built A\b: x_inbuilt =\n");
disp(x_in);
function x = dolittle_(A,b)
    n = length(A);
    for i = 1:n;
        for j = i+1: n
            f = A(j,i)/A(i,i);
            A(j,i+1: n) = A(j,i+1: n) - f*A(i,i+1:n);
            A(j,i) = f;
        end
    end
    %Ly = b, Ux = y
    y = zeros(n,1);
    y(1) = b(1);
    for i = 2:n
        y(i) = b(i) - A(i,1:i-1)*y(1:i-1);
    end

    x = zeros(n,1);
    x(n) = y(n)/A(n,n);
    for j  = n-1 : -1: 1
        x(j) = (y(j) - A(j, j+1:n)*x(j+1:n))/A(j,j);
    end



end 
