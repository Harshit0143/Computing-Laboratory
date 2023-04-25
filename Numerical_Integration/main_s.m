


a = 0;
b  = 4;
midpoint(a,b);
trapezoid(a,b);
simpson_1_3(a,b);
simpson_3_8(a,b);


function y = f(x)
    y = x*x*x;
end

function I =  midpoint(a,b)
    h = b-a;
    I  = b*f(a + h/2);
    fprintf('midpoint:  %.10f\n',I);  
end

function I = trapezoid(a,b)
    h = b-a;
    I = h*(f(a) + f(b))/2;
    fprintf('trapezoid:  %.10f\n',I);  
end



function I = simpson_1_3(a,b)
    h = (b-a)/2;
    I = h*(f(a) + 4*f(a+h) + f(b))/3;
    fprintf('simpson_1_3:  %.10f\n',I);  
end
function I = simpson_3_8(a,b)
    h = (b-a)/3;
    I = 3*h*(f(a)+ 3*f(a+h)+3*f(a+2*h) + f(b))/8;
     fprintf('simpson_3_8:  %.10f\n',I);  
end
