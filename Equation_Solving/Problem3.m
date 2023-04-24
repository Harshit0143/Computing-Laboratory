
format long
A1 = [4 1 -1 ; 2 7 1 ; 1 -3 12];
b1 = [3 ; 19 ; 31];
x = [0 ; 0 ; 0];



fprintf("Part (a):\n")
fprintf("Solutin by MATLAB in built A\b: x_inbuilt =\n");
disp(A1\b1);
fprintf("Solutin by Gauss-Jacobi: x =\n");
x1 = Gauss_Jacobi(A1,b1,x,1000,1e-8);
disp(x1);


fprintf("\nPart (b):\n")
A2 = [1 2 3 ; 2 -1 2 ; 3 1 -2];
b2 = [5 ; 1 ; -1];

% In the second part, this method will not converge (in any order of the rows)
fprintf("Solutin by MATLAB in built A\b: x_inbuilt =\n");
disp(A2\b2);
x2 = Gauss_Jacobi(A2,b2,x,1000,1e-8);
fprintf("Solutin by Gauss-Jacobi: x =\n");
disp(x2);
fprintf("Does not converge with this inital guess!\n");




function x =  Gauss_Jacobi(A,b,x,it_max,tol)
     n = size(A,1);
     it = 0;
     y = x;
     err = 1 + tol;
     while it < it_max  && err >= tol
         for i = 1 :n
            x(i) =  b(i);
            for j =   1 : n
                if j ~= i 
                    x(i) = x(i)  - A(i,j)*y(j);
                end
            end
            x(i) = x(i)/A(i,i);
         end
         err = max(abs(x - y));

         y = x;
         it = it + 1;
     end
     if (it == it_max)
        fprintf('Maximum Iterations Reached!\n');

     else 
        fprintf('Iterations to termintate: %d\n', it);
     end
end
