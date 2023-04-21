# Computing-Laboratory


# Numerical Integration 

### $n$ = `number of points` - 1 = `number of intervals` 

## Trapezoidal rule
<img width="1645" alt="Screenshot 2023-04-18 at 4 28 29 PM" src="https://user-images.githubusercontent.com/97736991/232757169-03bff3ad-9f5c-4dc4-b6b2-77e770518403.png">
<img width="1673" alt="Screenshot 2023-04-18 at 4 32 08 PM" src="https://user-images.githubusercontent.com/97736991/232757908-74290f2d-ebb3-4187-8875-0fd9f224b377.png">

## Simpson’s 1/3 rule
<img width="1185" alt="Screenshot 2023-04-18 at 4 34 39 PM" src="https://user-images.githubusercontent.com/97736991/232758427-5ec749e9-d456-4bc5-833c-f6fb2d8275e8.png">

<img width="1381" alt="Screenshot 2023-04-18 at 4 53 23 PM" src="https://user-images.githubusercontent.com/97736991/232762264-89675f0f-58b4-49b3-8f62-9ebec9e6fcfb.png">


## Midpoint Rule
### Note that `number of midpoints` = `number of intervals` 
<img width="1669" alt="Screenshot 2023-04-18 at 4 44 37 PM" src="https://user-images.githubusercontent.com/97736991/232760453-df26ce57-723c-4027-acd3-603962bb2e8e.png">

Syllabus:

Before minor1

Bisection 
False Position
Fixed Point iteration
Newton Raphson
Secant method
Multiple roots
Convergence of methods needs to be covered as well

Gauss elimination with all concepts of partial pivoting scaling ill conditioned systems round off errors
Gauss Jordan Elimination
Conditions for which they work

After minor 1
Do little decomposition
Crouts decomposition
Cholesky Decomposition 
These are variants of lu decomposition
Conditions for convergence and existence

Gauss siedel method
Gauss jacobi method
Conditions for convergence

Newton interpolation
Lagrange interpolation

After minor 2
Mid point method(single and composite)
Trapezoidal method(single segment and composite)
Simpson method (1/8 and 3/8)


# Trapezoidal Method. 
* We  approximate the definite integral of $f()$ by that if $f_1()$ over the same range. 
* Geometrically, the trapezoidal rule is equivalent to approximating the area of the 
trapezoid under the straight line connecting $f(a)$ and $f(b)$
<img width="478" alt="Screenshot 2023-04-21 at 4 06 14 PM" src="https://user-images.githubusercontent.com/97736991/233615441-3044c67a-ef5e-4a02-ab12-c273ec3de508.png">
<img width="700" alt="Screenshot 2023-04-21 at 4 07 11 PM" src="https://user-images.githubusercontent.com/97736991/233615663-127af0f3-5869-4b46-9fd8-1f4657e48fec.png">

## Aproximate Error in Trapezoidal Rule 
<img width="1015" alt="Screenshot 2023-04-21 at 4 09 01 PM" src="https://user-images.githubusercontent.com/97736991/233616006-6716751b-e1ad-4f62-8997-75f8eec7a163.png">

* To approximate it, you can take the `average` value of $f^{"}(x)$ over $[a,b]$ which will simply be:
$$\bar{f^{"}(\epsilon)} = \frac{f'(b)-f'(a)}{b-a}$$
* The error is zero for every linear function 
* We derive it using the Taylor Series that obviously assumes $b$ and $a$ are close. 
<img width="560" alt="Screenshot 2023-04-21 at 4 12 57 PM" src="https://user-images.githubusercontent.com/97736991/233616747-1fb97382-3d65-4689-97c1-1664e577b3d8.png">

# Multiple application / composite integration formulas
* Basically divide it into many segments 
* For division into $n$ segments, we have 
$$h = \frac{b-a}{n}$$
<p align="center">
<img width="300" alt="Screenshot 2023-04-21 at 4 21 03 PM" src="https://user-images.githubusercontent.com/97736991/233618259-7250f5a0-34ba-4a75-84cb-23152058b0e5.png"></p>
<p align="center">
<img width="300" alt="Screenshot 2023-04-21 at 4 23 54 PM" src="https://user-images.githubusercontent.com/97736991/233618897-ed13a63c-bef7-4409-9391-d8c477d171b2.png"></p>

* Note that there are $(n+1)$ points in the expression for $I$ 
* NOTE:This is clearly different from Midpoint Rule. In Midpoint rule we approximate as `Rectangles` with height as $\frac{f(x_i)+f(x_{i+1})}{2}$ and width, obviosuly $(x_{i+1}-x_i)$. 
* The formual for both however, is the smae as the area of the `trapezium` and the rectangle considered in `midpoint` method are the same 


# Simpson's Rules 

# Evaluation of integral with unequal segments


