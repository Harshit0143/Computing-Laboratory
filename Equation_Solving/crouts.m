format long
n  = 10;
A=rand(n,n);
b=rand(n,1);
x = crout_(A,b);
fprintf("Solutin by crout little's Decomposition: x =\n");
disp(x);
x_in = A\b;

fprintf("Solutin by MATLAB in built A\b: x_inbuilt =\n");
disp(x_in);
function x = crout_(A,b)
    n = length(A);
    for j = 2: n
        A(1,j) = A(1,j)/A(1,1);
    end
    for j = 2:n
        for i = j:n
            A(i,j) = A(i,j) - A(i, 1:j-1)*A(1:j-1, j);
        end
        for k = j+1: n
            A(j,k) = (A(j,k) - A(j,1:j-1)*A(1:j-1,k))/A(j,j);
        end
    end

    %Ly = b
    %Ux = y
    y = zeros(n,1);
    y(1) = b(1)/A(1,1);
    for i = 2:n
        y(i) = (b(i) - A(i,1:i-1)*y(1:i-1))/A(i,i);
    end
    x = zeros(n,1);
    x(n) = y(n) ;
    for i = n-1 : -1 : 1
        x(i) = y(i)  - A(i,i+1:n)*x(i+1:n);

    end

end 
