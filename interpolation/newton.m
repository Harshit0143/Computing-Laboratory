x = [2 3 4 5 6];
y = [4 7 8 11 15];
curr = 4.5;
f_4o5 = newton(curr);

disp(f_4o5);

function z = newton(k)
    x = [2 3 4 5 6];
    y = [4 7 8 11 15];
    n = length(x);
    fdd = zeros(n);
    for i = 1:n
        fdd(i,i) = y(i);
    end
        for j = 1:n
            for i = j-1:-1:1
                fdd(i,j) = (fdd(i+1,j)-fdd(i,j-1))/(x(j)-x(i));
            end
        end
    z = 0;
    p = 1;
    for i = 1:n
        z = z + fdd(1,i)*p;
        p = p*(k-x(i));
    end
end
