Homework 3 answers

1)

``` bash

>> x = 1;
>> y = 2;
>> u = 0;
>> B = 1/(sqrt(pi*2)*(x))*exp((-0.5)*((x-u)/(y))^2);
>> normpdf(x,u,y)
ans =
    0.1760
 
 ```
 
 2)
 
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
3)

``` bash



 
