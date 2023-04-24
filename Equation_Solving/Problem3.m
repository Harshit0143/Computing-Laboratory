format long 
a = 0;
b = 2;
n = 4;
I_comp_simpson_1_3   =  composite_simpson_1_3(a,b,n);
fprintf('\nProblem(a)\n')
fprintf('Limits of integral %.10f to %.10f \n',a,b);
fprintf('Integral using composite simpson 1/3 on %d segmenmts:  %.10f\n', n,I_comp_simpson_1_3);


fprintf('\nProblen (b)\n')

a = 0;
b = pi/2;
% n = 24;
tol = 1e-6;
% I = composite_simpson_3_8(a,b,n);
% disp(I);
fprintf('Limits of integral %.10f to %.10f \n',a,b);
fprintf('Absolute Tolerance:');
disp(tol);

I_adaptive_simpson_3_8   =  adaptive_simpson_3_8(a,b,tol);



 
function y =  func(x)
  y = exp(x)/(1 + x);
end 

function y =  func2(x)
  y = sin(x);
end 




function I = adaptive_simpson_3_8(a,b, tol)
    err = 1 + tol;
    n = 3;
    I_prev= 0;
    while err >= tol
        I = composite_simpson_3_8(a,b,n);
        err = abs(I-I_prev);  
        I_prev = I;
        n = n + 3; % only segments in number multiples of 3 are allowed in Simpson 3/8
    end
    fprintf('Integral using adaptive simpson 3/8 on %d segmenmts:  %.10f\n', n,I); 
    fprintf('Takes %d iterations', n/3); 
end

function I = composite_simpson_3_8(a, b, n) % n should be a multiple of 3
    h = (b - a) / n;
    I = func2(a) + func2(b);
    point = a;
    for i = 1: n-1
        point = point + h;
        if  mod(i,3)  == 0
            I = I + func2(point)*2;
        else 
            I = I + func2(point)*3;
        end
    end
    I = I*3*h/8;
end





function I = composite_simpson_1_3(a, b, n)
    h = (b - a) / n;
    I = func(a) + func(b);
    point = a;
    for i = 1: n-1
        point = point + h;
        if  mod(i,2)  == 1
            I = I + func(point)*4;
        else 
            I = I + func(point)*2;
        end
    end
    I = I*h/3;
end