a = 0;
b  = 4;
n = 120;
midpoint(a,b,n);
trapezoid(a,b,n);
simpson_1_3(a,b,n);
simpson_3_8(a,b,n);


function y = f(x)
    y = 3*x+10;
end

function I =  midpoint(a,b,n)
    h = (b-a)/n;
    point  = a + h/2;
    I = 0;
    for i = 1:n
        I = I + f(point);
        point = point + h;
    end
    I = I*h;
    fprintf('midpoint:  %.10f\n',I);  
end

function I = trapezoid(a,b,n)
    h = (b-a)/n;
    I = f(a) + f(b);
    point = a;
    for i = 1:n-1
        point = point + h;
        I = I + 2*f(point);
        
    end
    I = I*h/2;
    fprintf('trapezoid:  %.10f\n',I);  
end



function I = simpson_1_3(a,b,n)
    h = (b-a)/n;
    I = f(a) + f(b);
    point = a;
    for i = 1:n-1
        point = point + h;
        if mod(i,2) == 0
            I = I + 2*f(point);
        else 
            I = I + 4*f(point);
        end
    end
        I = I*h/3;
    
    fprintf('simpson_1_3:  %.10f\n',I);  
    end

function I = simpson_3_8(a,b,n)
    h = (b-a)/n;
    I = f(a) + f(b);
    point = a;
    for i = 1:n-1
        point = point + h;
        if mod(i,3)==0
            I = I + 2*f(point);
        else 
            I = I + 3*f(point);
        end
        
    end
    I = I*3*h/8;
     fprintf('simpson_3_8:  %.10f\n',I);  
end
