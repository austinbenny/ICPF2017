Homework 2 Answers  
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

**makes variable a also equal c**

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

```
3)  
```bash
>> 1\2
ans =
     2
```
The backslash function divides the second number by the first number. 
```bash
>> 1/2
ans =
    0.5000
```
The forward-slash function divides the frist number by the second number.
```bash
>> int8(1/2)
ans =
  int8
   1
```
The int8 function finds the integer value from -128 to 127 so it rounds 0.5 to 1
```bash
>> int8(1/3)
ans =
  int8
   0
```
The int8 function finds the integer value from -128 to 127 so it rounds 0.333 to 0
```bash
>> -5^2
ans =
   -25
```
The exponent multiplies the 5's together then adds a negative sign in front of the product
```bash
>> (-5) ^ 2
ans =
    25
```
The parenthesis allows the two -5's to be multiplied to with each other
```bash
>> 10-6/2
ans =
     7
```
Order of operations first divides the 6 by the 2 then subtracts the quotient from 10
```bash
>> 5*4/2*3
ans =
    30
```
This function works the operations from left to right.   
4a)  
```bash
>> a = [1,0;2,1]
a =
     1     0
     2     1
>> b = [-1,2;0,1]
b =
    -1     2
     0     1
>> c = [3;2]
c =
     3
     2
>> d = [5]
d =
     5
```
  
4b)  
1.  
```bash
>> a + b
ans =
     0     2
     2     2
```
MATLAB is adding matrices A and B together  
2.  
```bash
>> a .* b
ans =
    -1     0
     0     1
```
MATLAB multiplies the matrcies as a point-wise product  
3.  
```bash
>> a * b
ans =
    -1     2
    -2     5
```
MATLAB multiplies matrices A and B together  
4.  
```bash
>> a * c
ans =
     3
     8
```
MATLAB multiplies matrices A and C together  
5.  
```bash
>> a + c
ans =
     4     3
     4     3
```
MATLAB adds matrices A and C together  
6.  
```bash
>> a + d
ans =
     6     5
     7     6
```
MATLAB adds matrices A and D together  
7.  
```bash
>> a .* d
ans =
     5     0
    10     5
```
MATLAB multiplies matrices A and D together as a point-wise product  
8.  
```bash
>> a * d
ans =
     5     0
    10     5
```
MATLAB multiplies matrices A and D together  
5)  
Method 1: diag() function  
```bash
a =
     2     2     2
>> diag(a)
ans =
     2     0     0
     0     2     0
     0     0     2
```
Method 2: eye() Function  
```bash
>> A = 2 * eye(3)
A =
     2     0     0
     0     2     0
     0     0     2
```
Method 3: zeros function
```bash
>> zeros(3) + diag(a)
ans =
     2     0     0
     0     2     0
     0     0     2
```


