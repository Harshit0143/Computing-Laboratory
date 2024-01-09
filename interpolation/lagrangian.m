
x = [1 1.3 1.6 1.9 2.2];
y = [ 0.1411 -0.6878 -0.9962 -0.5507 0.3115];

arr = 0:0.0001:100;
y = arrayfun(@lagrange,arr);
plot(arr,y,'.')

function z = lagrange(k)
    x = [1 1.3 1.6 1.9 2.2];
    y = [ 0.1411 -0.6878 -0.9962 -0.5507 0.3115];
    n = length(x);
    z = 0;
    for i = 1 : n
        p = y(i);
        for j = 1:n
            if j~=i
                p = p*(k-x(j))/(x(i)-x(j));
            end
        end
        z = z + p;
    end
end
