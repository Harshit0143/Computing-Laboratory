format long 
a = 0;
b =  10;
tol = 1e-6;
fprintf('\n');
fprintf('Limits of integral %.10f to %.10f \n',a,b);
fprintf('Absolute Tolerance:');
disp(tol);
I = adaptive_trapezoidal(a,b, tol);

function y =  func(x)
    if x ~= 0 
        y = sin(x)/x;
    else 
        y = 1;
        
    end
end 

function I = adaptive_trapezoidal(a,b, tol)
    err = 1 + tol;
    n = 1;
    I_prev= 0;
    while err >= tol
        I = composite_trapezoidal(a,b,n);
        err = abs(I-I_prev);  
        I_prev = I;
        n = n + 1;
    end
    fprintf('Integral using adaptive trapezoidal on %d segmenmts:  %.10f\n', n,I);  
    fprintf('Takes %d iterations', n); 
end

function I = composite_trapezoidal(a, b, n)
    h = (b - a) / n;
    I = func(a) + func(b);
    point = a;
    for i = 1: n-1
        point = point + h;
        I = I + 2*func(point);
    end   
    I = I*h/2;
end
