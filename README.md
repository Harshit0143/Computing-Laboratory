# Computing-Laboratory


# Numerical Integration 

### $n$ = `number of points` - 1 = `number of intervals` 

## Trapezoidal rule
<img width="1645" alt="Screenshot 2023-04-18 at 4 28 29 PM" src="https://user-images.githubusercontent.com/97736991/232757169-03bff3ad-9f5c-4dc4-b6b2-77e770518403.png">
<img width="1673" alt="Screenshot 2023-04-18 at 4 32 08 PM" src="https://user-images.githubusercontent.com/97736991/232757908-74290f2d-ebb3-4187-8875-0fd9f224b377.png">

## Simpson’s 1/3 rule
<img width="1185" alt="Screenshot 2023-04-18 at 4 34 39 PM" src="https://user-images.githubusercontent.com/97736991/232758427-5ec749e9-d456-4bc5-833c-f6fb2d8275e8.png">

<img width="1381" alt="Screenshot 2023-04-18 at 4 53 23 PM" src="https://user-images.githubusercontent.com/97736991/232762264-89675f0f-58b4-49b3-8f62-9ebec9e6fcfb.png">



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
<img width="1281" alt="Screenshot 2023-04-21 at 11 19 12 PM" src="https://user-images.githubusercontent.com/97736991/233702076-e5d722ce-675c-4060-8533-4da90bb39a55.png">



# Midpoint method is an open Method
<img width="1433" alt="Screenshot 2023-04-21 at 11 21 27 PM" src="https://user-images.githubusercontent.com/97736991/233702489-12ac1889-e7cb-44f1-a01e-0ff98d519659.png">
### Note that `number of midpoints` = `number of intervals` 
<img width="1669" alt="Screenshot 2023-04-18 at 4 44 37 PM" src="https://user-images.githubusercontent.com/97736991/232760453-df26ce57-723c-4027-acd3-603962bb2e8e.png">


## THe following are closed integral methods 

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

<img width="1235" alt="Screenshot 2023-04-21 at 9 58 52 PM" src="https://user-images.githubusercontent.com/97736991/233687777-04c53bff-2ff4-4b6a-a2e7-73e8866a6cfa.png">
<img width="983" alt="Screenshot 2023-04-21 at 10 01 12 PM" src="https://user-images.githubusercontent.com/97736991/233688207-a7e4bb7b-3330-415c-89f5-44af38a07934.png">
<img width="269" alt="Screenshot 2023-04-21 at 10 02 35 PM" src="https://user-images.githubusercontent.com/97736991/233688474-378c07b9-c8a3-4e07-a7bd-d3c0db78a9fd.png">

<img width="328" alt="Screenshot 2023-04-21 at 10 03 26 PM" src="https://user-images.githubusercontent.com/97736991/233688613-c28f2f79-24c0-4423-923c-8ceb5ee4383c.png">

<img width="1065" alt="Screenshot 2023-04-21 at 10 05 12 PM" src="https://user-images.githubusercontent.com/97736991/233688931-a3ee979e-2b51-44e4-be8c-375bebb940f6.png">
<img width="992" alt="Screenshot 2023-04-21 at 10 05 26 PM" src="https://user-images.githubusercontent.com/97736991/233688953-e0084091-f816-4656-ac78-2b8ca5a2bea3.png">


<img width="893" alt="Screenshot 2023-04-21 at 10 08 07 PM" src="https://user-images.githubusercontent.com/97736991/233689440-73c3a19a-89ba-46b7-ae87-3a60dd2aa0e1.png">
<img width="396" alt="Screenshot 2023-04-21 at 10 10 27 PM" src="https://user-images.githubusercontent.com/97736991/233689888-642b5046-8be0-4303-be32-72f4c2205421.png">
<img width="1149" alt="Screenshot 2023-04-21 at 10 12 23 PM" src="https://user-images.githubusercontent.com/97736991/233690199-6fdedb7c-092d-4326-95aa-9a5433826fca.png">

<img width="1141" alt="Screenshot 2023-04-21 at 10 29 03 PM" src="https://user-images.githubusercontent.com/97736991/233693206-151fbf8e-eb9d-4c1e-aff3-f1b4ffe54390.png">

# Simpson’s 3/8 Rule

<img width="743" alt="Screenshot 2023-04-21 at 10 32 59 PM" src="https://user-images.githubusercontent.com/97736991/233693973-147c494b-38ff-4553-9a16-6fe5e209f894.png">

<img width="619" alt="Screenshot 2023-04-21 at 10 30 54 PM" src="https://user-images.githubusercontent.com/97736991/233693573-7fba87a7-6586-4564-b93f-5445207503a3.png">
<img width="412" alt="Screenshot 2023-04-21 at 10 33 26 PM" src="https://user-images.githubusercontent.com/97736991/233694066-21507faf-7788-4eec-a45a-8c7b9b33b1db.png">

<img width="1156" alt="Screenshot 2023-04-21 at 10 33 49 PM" src="https://user-images.githubusercontent.com/97736991/233694128-bf20b0a7-4eba-45a6-b529-f9537b8f215c.png">

<img width="1134" alt="Screenshot 2023-04-21 at 10 37 14 PM" src="https://user-images.githubusercontent.com/97736991/233694726-8b32cd84-f54e-4f85-bb23-ec7d16c3c531.png">

<img width="1600" alt="Screenshot 2023-04-21 at 10 38 12 PM" src="https://user-images.githubusercontent.com/97736991/233694916-1aedb859-1323-4725-aac5-3e0eb86924b8.png">


# Estimating integral by using 5 segments. 
<img width="1557" alt="Screenshot 2023-04-21 at 10 45 56 PM" src="https://user-images.githubusercontent.com/97736991/233696444-662ac80a-c685-4b06-bcb3-86720a2183de.png">


<img width="1570" alt="Screenshot 2023-04-21 at 10 47 52 PM" src="https://user-images.githubusercontent.com/97736991/233696814-872f48c9-42aa-44c2-b6f1-eae542c2ac59.png">
* The reason being that `even-segment odd point` formula gives same `order` accuracy as the next `odd-segment even point` formula but with one point lesser 



# Evaluation of integral with unequal segments
* Experimental data may not be equally spaced. But we need to find the integral.  
<img width="1326" alt="Screenshot 2023-04-21 at 10 50 20 PM" src="https://user-images.githubusercontent.com/97736991/233697196-04f8375f-2fb7-4de0-aada-479c7f4e09ef.png">



<img width="1066" alt="Screenshot 2023-04-25 at 12 43 42 AM" src="https://user-images.githubusercontent.com/97736991/234093567-095d8b48-6b73-446a-bf29-e459c39a27ce.png">



