format long 
a = 0;
b = 1;
tol = 1e-6;
fprintf('\n');
fprintf('Limits of integral %.10f to %.10f \n',a,b);
fprintf('Relative Tolerance:');
disp(tol);
I = adaptive_midpoint(a,b,tol);

function y =  func(x)
  y = 1/(1 + x*x);
end 

function I = adaptive_midpoint(a,b, tol)
    err = 1 + tol;
    n = 1;
    I_prev= 0;
    while err >= tol
        I = composite_midpoint(a,b,n);
        err = abs(I-I_prev)/I;  
        I_prev = I;
        n = n + 1;
    end
    fprintf('Integral using adaptive midpoint on %d segmenmts:  %.10f\n', n,I);   
    fprintf('Takes %d iterations', n); 
end

function I = composite_midpoint(a, b, n)
    h = (b - a) / n;
    point = a + h/2;
    I = 0;
    for i = 1: n
        I = I + func(point);
        point = point + h;
    end
    I = I*h;
end