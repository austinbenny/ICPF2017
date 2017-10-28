Homework 3 answers

PROBLEM 1:

``` bash

>> x = 1;
>> y = 2;
>> u = 0;
>> B = 1/(sqrt(pi*2)*(x))*exp((-0.5)*((x-u)/(y))^2);
>> normpdf(x,u,y)
ans =
    0.1760
 
 ```
 
 PROBLEM 2:
 
 ``` bash 
 For TO = 4
 
>> M = 67;
P = 1.038;
C = 3.7;
K = 0.0054;
TW = 100;
TY = 70;
TO = 4;

>>((M^(2/3))*(C)*(P^(1/3)))/(K*pi^2*((4*pi)/3)^(2/3))* log(0.76*((TO-TW)/(TY-TW)))
ans =
  396.5763
  
For TO = 20

>> clear all
>> M = 67;
P = 1.038;
C = 3.7;
K = 0.0054;
TW = 100;
TY = 70;
TO = 20;
>> ((M^(2/3))*(C)*(P^(1/3)))/(K*pi^2*((4*pi)/3)^(2/3))* log(0.76*((TO-TW)/(TY-TW)))
ans =
  315.2179

```
PROBLEM 3:

``` bash
PROBLEM 3 

FUNCTION:
function PolarStruct = getPolar(inputCartesianStruct)

inputCartesianStruct.x = input('enter your x component: ');
inputCartesianStruct.y = input('enter your y component: ');

    if isfield(inputCartesianStruct, 'x')==1 && isfield(inputCartesianStruct, 'y')==1
    PolarStruct.r_radians = sqrt((inputCartesianStruct(1).x)^2 + (inputCartesianStruct(1).y)^2);
    PolarStruct.phi = acos((inputCartesianStruct(1).x)/PolarStruct.r_radians);
    else
        error('The input structures dont have the required fields');
    end
end

TEST:
enter your x component: 1
enter your y component: 1
    r_radians: 1.4142
          phi: 0.7854
		  
		  
FUNCTION:
function CartesianStruct = getCartesian(PolarStruct)

PolarStruct.r = input('enter your radius: ');
PolarStruct.phi = input('enter your angle in radians: ');

    if isfield(PolarStruct, 'r')==1 && isfield(PolarStruct, 'phi')==1
    CartesianStruct.x = (PolarStruct.r)*cos(degtorad(PolarStruct.phi));
    CartesianStruct.y = (PolarStruct.r)*sin(degtorad(PolarStruct.phi));
    else
        error('The input structures dont have the required fields');
    end

end

TEST:
>> getCartesian
enter your radius: 1
enter your angle in radians: 1

ans = 

  struct with fields:

    x: 0.9998
    y: 0.0175
```
PROBLEM 4:

```bash
FUNCTION:
function bytes = getSize(mydir)

bytes = sum([mydir.bytes]);

end

SCRIPT:
mydir = input('Input directory name: ', 's');
if exist(mydir,'dir')==7 %To make the problem more robust
    mydir = dir;
    Tot_size = getSize(mydir);
    disp(['The total size of your directory is ', num2str(Tot_size),' ' 'bytes']);
else
    disp('The file does not exist.');
end

TEST:
>> Untitled4
Input directory name: sdfjsdf
The file does not exist.
>> Untitled4
Input directory name: ..
The total size of your directory is 6808 bytes
```
![Excel image](https://www.facebook.com/photo.php?fbid=1591314284259514&set=pcb.1591314364259506&type=3&theater)

PROBLEM 5:

```bash
FUNCTION:
if (n_int<0)
    disp('The input argument is not a non-negative integer!');
elseif isstring(n_int)== 1
    disp('The input argument is not a non-negative integer!');
else
    a = getFib(n_int);
    disp(a)
end

SCRIPT:
function fib(x)
x = input('Please enter a non-negative integer or type stop:', 's');
    if (x == 'stop')
        return;
    elseif (isstring(x)==1)
        z = str2double(x);
        if isreal(z)==1 && z ==round(z) && z>0
            disp(['fib(', num2str(x),') = ', getFib(z)]);
            fib(x);
        else
            disp('The input argument is not a non-negative integer!');
            fib(x);
        end
    else
        disp('The input argument is not a non-negative integer!');
    end
end

Please enter a non-negative integer or type stop: -123
The input argument is not a non-negative integer!
Please enter a non-negative integer or type stop: a
The input argument is not a non-negative integer!
Please enter a non-negative integer or type stop: austin
The input argument is not a non-negative integer!
Please enter a non-negative integer or type stop: 
The input argument is not a non-negative integer!
Please enter a non-negative integer or type stop: -12.3
The input argument is not a non-negative integer!
Please enter a non-negative integer or type stop: 0
fib(0) = 0
Please enter a non-negative integer or type stop: 1
fib(1) = 1
Please enter a non-negative integer or type stop: 2
fib(2) = 1
Please enter a non-negative integer or type stop: 3
fib(3) = 2
Please enter a non-negative integer or type stop: 4
fib(4) = 3
Please enter a non-negative integer or type stop: 5
fib(5) = 5
Please enter a non-negative integer or type stop: 6
fib(6) = 8
Please enter a non-negative integer or type stop: 7
fib(7) = 13
Please enter a non-negative integer or type stop: 8
fib(8) = 21
Please enter a non-negative integer or type stop: 9
fib(9) = 34
Please enter a non-negative integer or type stop: 10
fib(10) = 55
Please enter a non-negative integer or type stop: 11
fib(11) = 89
Please enter a non-negative integer or type stop: 12
fib(12) = 144
Please enter a non-negative integer or type stop: 22
fib(22) = 17711
Please enter a non-negative integer or type stop: 32
fib(32) = 2178309
Please enter a non-negative integer or type stop: stop

```

PROBLEM 6:
```bash
FUNCTION:
function area = getTriangleArea(vertices)

x1 = vertices(1);
y1 = vertices(2);
x2 = vertices(3);
y2 = vertices(4);
x3 = vertices(5);
y3 = vertices(6);

absolute_value = abs((x2.*y3)-(x3.*y2)-(x1.*y3)+(x3.*y1)+(x1.*y2)-(x2.*y1));
area = 0.5 *absolute_value;

end

SCRIPT:
%Assuming the user inputs only integers and 6 of them in the form
%[(x1,y1),(x2,y2),(x3,y3)]

vertices = input('enter you 3 vertices counter-clockwise:' );
a = getTriangleArea(vertices);
disp(['The area of the traingle is ', num2str(a)], 'units');



TEST:
>> Untitled6
enter you 3 vertices counter-clockwise:[12,0,6,6,0,0]
    The area of the traingle is 36
```

![Wolfram Alpha traingle area picture](https://www.facebook.com/photo.php?fbid=1591314280926181&set=pcb.1591314364259506&type=3&theater)

PROBLEM 7:
```bash
FUNCTION:

function outputLogical = isPrime(n)

divisor = 2;
outputLogical = true;
sqrt_n = round(sqrt(n));
outputLogical = isDivisable(n, divisor);

    function output = isDivisable(n,divisor)
            if (mod(n,divisor) == 0)
                output = false;
            elseif (sqrt_n < divisor)
                output = true;
                return
            else
                divisor = divisor +1;
                output = isDivisable(n,divisor);
            end
    end
end

SCRIPT:
n = input('Enter your prime number: ');
if isnumeric(n) && rem(n,1)==0 && (n>1)
    a = isPrime(n);
    disp(a)
elseif (n<1)
    disp('The number you have entered is < 1');
else 
    disp('I dont think this is an integer');
end

TEST:
>> HW3PROB6
Enter your prime number: 12
   0
>> HW3PROB6
Enter your prime number: 5
   1
>> isprime(12)
ans =
  logical
   0
>> isprime(5)
ans =
  logical
   1
```
PROBLEM 8:
```bash
function [h] = genfunc(varargin)
    switch nargin %nargin checks the number of input arguments
        case 0
            a = 0;
            b = 0;
            c = 0;
        case 1
            a = varargin{1};
            b = 0;
            c = 0;
        case 2
            a = varargin{1};
            b = varargin{2};
            c = 0;
        case 3
            a = varargin{1};
            b = varargin{2};
            c = varargin{3};
        otherwise
            error ('Too may arguments');
    end

    function y = evalFunc(x)
    y = a*x^2 +b*x + c;
    end

    h = @evalFunc;

end

TEST:
>> q1 = genfunc(1,2,0)

q1 =

  function_handle with value:

    @genfunc/evalFunc
>> q2 = genfunc(1,2)

q2 =

  function_handle with value:

    @genfunc/evalFunc
	
>>  w = q1(2)

w =

     8

>> r = q2(2)

r =

     8
```
