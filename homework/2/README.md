## Hello and welcome to my Answers for HW2. I hope you have fun reading ... actually, you're a sociopath if you have fun reading code like this, so instead I'll just say hope you dont get mad while reading these answers ## 

Homework 2 answers

1)  
```bash
>> a=1
a =
     1

**sets the value of variable a to 1 **

>> b='x'
b =
    'x'

** sets the variable b equal to the string array (used to store sentences in Matlab) "x" **

>> c=true
c =
  logical
   1

** merely states that "1" is the boolien equivalent of true **

>> whos a b c
  Name      Size            Bytes  Class      Attributes

  a         1x1                 8  double               
  b         1x1                 2  char                 
  c         1x1                 1  logical    

**states the declared variables and thier type**       

>> a==c
ans =
  logical
   1

**makes variable a (which was equal to something else before) equal c**

>> a+c
ans =
     2

**adds a and c**

>> d= [1 2 3 4]
d =
     1     2     3     4

**creates a cell horizontal cell array**

>> e = ['a' 'b' 'c' 'd']
e =
    'abcd'

**creates a horizontal cell array for string "abdc" for varaible e; combines all charecters into 1 string**

>> f = ['abcd']
f =
    'abcd'

**creates a horizontal cell array for string "abdc" for varaible f**

>> g = {‘a’ ‘b’ ‘c’ ‘d’}
 g = {‘a’ ‘b’ ‘c’ ‘d’}
      ?
Error: The input character is not valid in MATLAB statements or expressions.

** that special quotation mark type charecter is not recognized by matlab2017**
 
>> h = { a b c d}
h =
  1×4 cell array
    [1]    'x'    [1]    [1×4 double]

**creates a cell array (horizontally) that displays the varaibles values**

>> whos d e f g h
  Name      Size            Bytes  Class     Attributes

  d         1x4                32  double              
  e         1x4                 8  char                
  f         1x4                 8  char                
  h         1x4               491  cell         

** states the varaibles written, their values, class, and bytes**
```
2)  
```bash
>> int16(intmin)
ans =
  int16
   -32768
>> int16(intmax)
ans =
  int16
   32767
>> int32(intmin)
ans =
  int32
   -2147483648
>> int32(intmax)
ans =
  int32
   2147483647

**If we type cast a larger integer than the one allowed by matlab, the program will only display upto the largest allowed integer, and vice versa for the smallest integer for a detailed reason:

Casting a larger number than the maximum value just changes its value to the maximum value. For example casting the number 999 to an int8 will return its maximum value which is 127, and similarly casting the number -999 to an int8 will return the next closest int8 value which is the int8 minimum value which is -128. **

```
3)  
```bash
>> 1/2
ans =
    0.5000

*left division, so normal divsion 1 by 2**

>> 1\2
ans =
     2

**left division, so divide 2 by 1**

>> int8(1/2)
ans =
  int8
   1

**The int8 function finds the integer value from -128 to 127 so it rounds 0.5 to 1**

>> int8(1/3)
ans =
  int8
   0

**The int8 function finds the integer value from -128 to 127 so it rounds 0.333 to 0**

>> -5^2
ans =
   -25

**Without the parenthesis, the negative is placed outside the operation; for example, -(5^2)**

>> (-5) ^ 2 
ans =
    25

** squaring -5 to yield 25 **

>> 10-6/2 
ans =
     7

** Matlab follows the order of operations by subtracting values before dividing them**

>> 5*4/2*3
ans =
    30

** Matlab follows the order of operations by dividing values before multiplying them**

```
4a)  
```bash
a)

>> a = [1 2; 0 1]
a =
     1     2
     0     1
>> b = [-1 0; 2 1]
b =
    -1     0
     2     1
>> c = [3; 2;]
c =
     3
     2
>> d = [5;]
d =
     5
     
** a = {1,0;2,1} for the variable a which is a 2 x 2 array which has 4 numbers, but each element is individually 8 bytes so there is 8 * 4 = 32 total bytes of data
b is also the same as a, its also a 2 x 2 array
c is a 2 x 1 array
d is either a 1 x 1 array or a 8 byte number **

```
  
4b)   
```bash
>> a + b
ans =
     0     2
     2     2

**adding corresponding values from matrix of the varaiables, for example, 1+ -1 = 0 is the first value in the new matrix**

>> a.* b
ans =
    -1     0
     0     1

**Element multiplication - Multiplying corresponding values from matrix of the varaiables, for example, 1 * -1 = -1 is the first value in the new matrix**

>> a * b
ans =
     3     2
     2     1

**matlab is multiplying the matrices how it's supposed to be done, by the dot product or row times column approach - for example, (1)(-1) + (2)(2) = 3 is the first value **

>> a*c
ans =
     7
     2

** Again using dot product but in this case, c has no value for the second column so the final result will only contain one column**

>> a+c
ans =
     4     5
     2     3

**Matlab is adding matrices. Since this is a 2x1 matrix, all the numbers in a are only summed with the first column in d. For example, 1+3 =4 & 0+2=2 is the first column**

>> a+d
ans =
     6     7
     5     6

**Matlab is adding matrices. So basically, matlab is adding matrix a by 3 because matrix d has only one value**

>> a.*d
ans =
     5    10
     0     5

**matlab is doing element multiplication, since matrix d has only 1 value, all the values in matrix a are merely multiplied by 5**

>> a*d
ans =
     5    10
     0     5

** Since matrix d only has one value, all the numbers in matrix a are multiplied by 5, for example, 1*5 = 5 & make up the first column**

# If you are multiplying a 2x2 matrix, then matlab uses the dot product, if it's a 2x1 matrix, matlab multiples both horixontal rows with the vertical one #

```  
5)  

```bash
>> z = [2 2 2]
z =
     2     2     2
>> diag(z)
ans =
     2     0     0
     0     2     0
     0     0     2

eye(3) * 2
ans =
     2     0     0
     0     2     0
     0     0     2

zeros(3) + diag(z)
ans =
     2     0     0
     0     2     0
     0     0     2
     
```
6)

```bash
1a (**cannot have variable equal another varaible, should change to a2**) = 2;
a1 = b (** the variable b is undefined, so you have to change to number or define it **)
x = 2; (** remove semicolon so sentence can keep running **)
y = X (X is capital letter) + 4; % is it 6?
pi = 4 *;(** semicolon ends statement**) atan(1);
disp(pi)
pi = 3.14159 (**remove quotes to take tangent **);
disp (tan(pi)) (** cant take tangent of string, so remove quotes**);
c = 4^3^2^3; (** put parenthesis around every power**)
_ (**have to set a varaible equal to something else**) = ((c-78564)/c + 32))(*fix parenthesis issues**);
year = 2017;
disp(['The year is ' year]);(** to make it easier, make a new variable called Z that is ['The year is' ' ' num2str(year) ]) % does it display 2017 correctly?
stuff = {'a' 'b' 4 21 'c'}; (**quotations around 4 and 21**)
beginning = stuff(0) (** cannot be 0 because 0 isnt the starting number in matlab**);
end (** end has another function in matlab, so change to capital E**) = stuff(5);
discount = 12% (percent symbol has another function for matlab, so you must correct it as shown below);
AMOUNT = 120.-; (** remove ".-"**
amount = 120$; (** quotation around 120$**)
and = "duck" (** make duck a string because otherwise it is undefined **);
class = 'INF1100, gr 2";
continue_ = x > 0;
fox == false; (** foz doesnt have a value, so the second equals is not necessary **)
wolf = fox == true;
Persian = ['Persian';' is ' 'a',' human ' 'language'];
Spanish = {'Spanish ' 'is ' ' another'  'language'}};
disp([Persian 'is not the same as' Spanish(:)]);

(** look at fixed script how to produce correct output**)

```
Look Below or [FIXED](https://github.com/austinbenny/ICPF2017/blob/master/homework/2/script_full_of_errors_fixed.m)  

```bash 
a1 = 2;
b = a1;
x = 2 ;
y = x + 4 ;
y2 =['y =' ' ' num2str(y)];
disp(y2);
pi = 4 * atan(1)
disp(pi);
pi = 3.14159;
disp(tan(pi));
c = (4)^(3)^(2)^(3);
d = ((c-78564)/(c + 32));
year = 2017 ;
z = ['The year is' ' ' num2str(year) ];
disp(z);
stuff = {'a' 'b' '4' '21' 'c'};
Beginning = stuff(1);
End = stuff(5);
discount = '12%';
AMOUNT = 120;
amount = '120 $';
and = 'duck';
class = 'INF1100, gr 2';
continue_ = x > 0;
fox = false;
wolf = fox == true;
Persian = {'Persian' ' is ' 'a' ' human ' 'language'};
Spanish = {'Spanish ' 'is ' ' another'  'language'};
f = [Persian{1} ' ' 'is not the same as' ' ' Spanish{1}];
disp(f);

```
7)

```bash
>> mkdir mynewdir
>> ls

.                        mynewdir                 
..                       script_full_of_errors.m  
main.m                   
>> edit mynewdir/myscript.m

On Script
x = -2*pi:pi/20:2*pi;
y = abs(sin(x));
plot(x,y);

>>myscript
 ```
 
! [Figure](https://raw.githubusercontent.com/austinbenny/ICPF2017/master/homework/2/Matlab%20part%208.jpg?token=AeFPfd8Cw4l-5KRkTLpJRKNh4jp0LuUwks5Z2wjMwA%3D%3D)

8)

```bash

>> cd ..
>> ls

.                        mynewdir                 
..                       script_full_of_errors.m  
main.m                   
>> myscript 
Undefined function or variable 'myscript'.

**This happens because the script file myscript is not in the current working directory I am on as (as you can see under ls); therfore, MATLAB
doesnt know what myscript is to run it**

```

# Thank you for grading my HW #
