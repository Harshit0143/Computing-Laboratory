arr = 0:0.0001:100;
y = arrayfun(@lagrange,arr);
plot(arr,y,'.')
