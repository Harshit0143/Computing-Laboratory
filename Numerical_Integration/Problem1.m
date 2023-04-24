format long 
a = -4;
b =  4;
n = 10;


I_trapezoid = trapezoid(a,b);
I_simpson = simpson_1_3(a,b);
I_comp_trapezoid =  composite_trapezoidal(a,b,n);
I_comp_simpson   =  composite_simpson_1_3(a,b,n);



fprintf('\n');
fprintf('Limits of integral %.10f to %.10f \n',a,b);
fprintf('Integral using trapezoidal %.10f \n', I_trapezoid);
fprintf('Integral using simpson %.10f \n', I_simpson);
fprintf('Integral using composite trapezoida on %d segmenmts:  %.10f\n', n,I_comp_trapezoid);
fprintf('Integral using composite simpson 1/3 on %d segmenmts:  %.10f\n', n,I_comp_simpson);



function y =  func(x)
  y = 1/(1 + x*x);
end 

function I = trapezoid(a,b)
    I = (b - a)*(func(a)+func(b))/2;
end

function I = simpson_1_3(a,b)
    mid = (a+b)/2;
    I = (b-a)*(func(a)+4*func(mid)+ func(b))/6;
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