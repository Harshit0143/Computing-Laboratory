% Here the Gauss-Seidel method does not converge in the initially given order of rows.
% Hence, we aim to swap two rows, which would make the coefficient matrix diagonally dominant.
% Diagonally dominant coefficient matrices converge in Gauss-Seidel and hence, we proceed.

A = [ 144 12 1 ; 64 8 1 ;25 5 1];
b = [279.2  ; 177.2; 106.8];
x = [1 ; 2 ; 5];
x = Gauss_Seidel(A,b,x,1000,1e-7);
fprintf("Final values by Gauss_Seidel:\na = %d \nb = %d \nc = %d\n", x(1) , x(2) , x(3));
x_in = A\b;
fprintf("Final values by MATLAB in built:\na = %d \nb = %d \nc = %d\n", x_in(1) , x_in(2) , x_in(3));


function x =  Gauss_Seidel(A,b,x,it_max,tol)
     n = size(A,1);
     it = 0;
     err = 1 + tol;


     while it < it_max && err >= tol 
         err = 0 ;
         for i = 1 :n
            old = x(i);
            x(i) =  b(i);
            for j =   1 : n
                if j ~= i 
                    x(i) = x(i)  - A(i,j)*x(j);
                end
            end
            x(i) = x(i) / A(i,i);
           
            err = max(err , abs(x(i)-old));
         end
     end
         it = it + 1;
     if (it==it_max)
        fprintf('Maximum Iterations Reached!\n');

     else 
        fprintf('Iterations to terminate: %d\n', it);
     end
end
