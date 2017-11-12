Homework 4 Answers

PROBLEM 1 & 2:

```bash
PART1  
function convertTempFor(x, y)
if isnumeric(y)==1
    error('Enter a string that tells me what to convert to');
elseif strcmp(y, 'c2f')
    w = [];
    for ii = 1:length(x)
        F = (9.0/5)*x(ii) + 32;
        w = [w F];
    end
    disp('The weather in Farenhiet is:')
    disp(w);
elseif strcmp(y, 'f2c')
    r = [];
    for jj = 1:length(x)
        C = (x(jj) - 32).*(5/9);
        r = [r C];
    end
    disp('The weather in Celsius is:')
    disp(r)
end
end
```
```bash
TIME:
A = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> timeit(@()(convertTempFor(A,'c2f')))
ans =

   3.0182e-04
```
PART2
```bash

function convertTempWhile(x,y)
    if isnumeric(y)==1
        error('Enter a string that tells me what to convert to');
    elseif strcmp(y,'c2f')
        n = 0;
        while n<=length(x)
             F = (9.0/5).*x + 32;
             n = n+1;
        end
        disp(F)
    elseif strcmp(y,'f2c')
         n = 0;
        while n<=length(x)
            C = (x - 32)*(5/9);
            n = n+1;
        end
        disp(C)
    end
end
```
```bash
TIME:
A = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> timeit(@()(convertTempWhile(A,'c2f')))
ans =

   1.3560e-04
```
PART3
```bash

function convertTempVec(x,y)
if isnumeric(y)==1
    error('Enter a string that tells me what to convert to');
elseif strcmp(y,'c2f')
    F = (9.0/5).*x + 32;
    disp(F);
elseif strcmp(y, 'f2c')
    C = (x - 32)*(5/9);
    disp(C);
end    
end
```

```bash
TIME:
A = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> timeit(@()(convertTempVec(A,'c2f')))
ans =

   6.8155e-05

The vectorized code is much faster because it is essentially just one operation that executes
and finds the solution instead of having to go thrugh every iteration and checking the values.
```

PROBLEM 3:
```bash
List = { {'M','A','T','L','A','B'}, {' '}, {'i','s'}, {' '}, {'a'}, {' '}, {'s','t','r','a','n','g','e'}, {', '}, {'b','u','t',' '}, {'p','o','p','u','l','a','r'}, {' '}, {'p','r','o','g','r','a','m','m','i','n','g',' ','l','a','n','g','u','a','g','e'} };
chr = '';
for ii= 1:length(List) 
    for jj = 1:length(List{ii})
        chr = [chr,List{ii}{jj}];
    end 
end
disp(chr);
```
Problem 4:
```bash
This code first takes the sqaure root of the number 2 and then raises the number 2 to the power
of 2. It does this iteration a total of 60 times. Intutively, if we sqaure a sqaure root, the 
answer is whatever's inside the root, but because 2 is not a perfect sqaure, we get an infinite
number of values after the decimal point. Because MATLAB dooesnt register the value of infinit,
the system will round to the highest precision the user set - by default, it is 16 digits after 
decimal point. This approximated or rounded number at the end doesnt make a difference when doing 
small calculations, but over 60 iterations we notice that the original number 2.0 decreased to 1.0; 
a reduction of 50%.
```
PROBLEM 5:
```bash


The highest precision by default emplyed by MATLAB is 16 digits after the decimal point. What
the code above does is divide the number 1 by 2 until the answer is essentially 0 in MATLAB's 
eyes. The last eps is 1.1102e-16, and if you divide this by 2, the value become ~0.5e-16 which
in scientific notation is 5.0e-17 and since e-17 is not registered by a default MATLAB system,
it will say 5.0e-17 = 0. This is why 1.0 ~= 1.0 + eps could be false and the while loop control
statement violated.
```

PROBLEM 6:
```bash
function getLargestPrime(n)
    for i = n:-1:2
        if(isprime(i) == 1)
            disp(i);
            break
        end
    end
end

TEST:
>> getLargestPrime(123)
   113
```

PROBLEM 7:

A

```bash

function fib()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp(['fib(',num2str(n),') = ',num2str(getFib(n))]);
                disp(['average runtime: ', num2str(timeit( @()getFib(n) )), 'seconds']);
                fib()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fib()
    end
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fib = getFib(n_int-1) + getFib(n_int-2);
        end
    end

end
```
bash```
TEST:
>> fib
Please enter a non-negative integer or type stop: 10
fib(10) = 55
average runtime: 2.6573e-05 seconds
Please enter a non-negative integer or type stop: 15
fib(15) = 610
average runtime: 0.00012577 seconds
Please enter a non-negative integer or type stop: 20
fib(20) = 6765
average runtime: 0.0013009 seconds
Please enter a non-negative integer or type stop: 25
fib(25) = 75025
average runtime: 0.013938 seconds
Please enter a non-negative integer or type stop: 30
fib(30) = 832040
average runtime: 0.090544 seconds
Please enter a non-negative integer or type stop: 35
fib(35) = 9227465
average runtime: 0.99438 seconds
```
```bash
B

```bash
function fibloop()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                f = @()getFib(n);
                disp(['fib(',num2str(n),') = ',num2str(getFib(n))]);
                disp([char(9),'Average Runtime:' ' ', num2str(timeit(f))])
                fibloop()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fibloop()
    end
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fibOld1 = 1;
            fibOld2 = 0;
            for i = 1:n_int-1
            fib = fibOld1 + fibOld2; 
            fibOld1= fibOld2;
            fibOld2 = fib;
            end
        end
    end
end
```
```bash
TEST:
Please enter a non-negative integer or type stop: 15
fib(15) = 610

	Average Runtime: 5.9157e-06
Please enter a non-negative integer or type stop: 20
fib(20) = 6765

	Average Runtime: 5.8924e-06
Please enter a non-negative integer or type stop: 25
fib(25) = 75025

	Average Runtime: 4.4696e-06
Please enter a non-negative integer or type stop: 30
fib(30) = 832040

	Average Runtime: 4.4832e-06
Please enter a non-negative integer or type stop: 35
fib(35) = 9227465

	Average Runtime: 4.9675e-06
```

BONUS

```bash
function Bonusfibloop()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                f = @()getFib(n);
                disp(['fib(',num2str(n),') = ',num2str(getFib(n))]);
                disp([char(9),'Average Runtime:' ' ', num2str(timeit(f))])
                Bonusfibloop()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        Bonusfibloop()
    end
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fibseq = zeros(n_int+1,1);
            fibseq(1) = 0;
            fibseq(2) = 1;
            for i = 3:n_int+1
            fibseq(i) = fibseq(i-1)+fibseq(i-2);
            end
            fib = fibseq(end);
        end
    end
end
```
TEST:
```bash
>> Bonusfibloop
Please enter a non-negative integer or type stop: 10
fib(10) = 55
> In timeit (line 158)
  In Bonusfibloop (line 12) 
	Average Runtime: 6.5015e-06
Please enter a non-negative integer or type stop: 15
fib(15) = 610

	Average Runtime: 6.7362e-06
Please enter a non-negative integer or type stop: 20
fib(20) = 6765

	Average Runtime: 6.2021e-06
Please enter a non-negative integer or type stop: 25
fib(25) = 75025

	Average Runtime: 6.5598e-06
Please enter a non-negative integer or type stop: 30
fib(30) = 832040

	Average Runtime: 4.6396e-06
Please enter a non-negative integer or type stop: 35
fib(35) = 9227465

	Average Runtime: 4.6826e-06

The fastest and most effcient method to code this is to use the loop because when MATLAB is excuting
the recursive function, it has to call the main function after every iterations as well as check if 
the conditions are true for each time - this is fantastically redundant hence the loop, which performs
the iterations locally inside the loop without checking any other condition is faster and more effceint.
Also, the bonus is faster than either of these because it is vectorized, it essentially does pure 
iterations without having to switch varaibles every iteration like the loops method.
```
PROBLEM 8:

```bash


function Output = timeFib(n)
if n>=0 && round(n)==n && ischar(n) == 0 && isreal(n)==1
    Output.n = n;
    Output.fib = getFib(n);
    Output.runtime = timeit( @()getFib(n) );
else
    disp('The input argument is not a non-negative interger!');
end

    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fib = getFib(n_int-1) + getFib(n_int-2);
        end
    end

end


function Output = timefibloop()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n && ischar(n) == 0 && isreal(n)==1
                dummyGetFib =getFib(n);
                dummyRuntime = timeit(@()getFib(n));
                disp(['fib(',num2str(n),') = ',num2str(getFib(n))]);
                Output.n = n;
                Output.fib = dummyGetFib;
                Output.runtime = dummyRuntime;
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        
    end
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            fibseq = zeros(n_int+1,1);
            fibseq(1) = 0;
            fibseq(2) = 1;
            for i = 3:n_int+1
            fibseq(i) = fibseq(i-1)+fibseq(i-2);
            end
            fib = fibseq(end);
        end
    end
end
```
TEST:
```bash
>> timeFib(20)
ans = 
  struct with fields:

          n: 20
        fib: 6765
    runtime: 6.9213e-04
>> timeFib('Austin')
Error using timeFib (line 7)
The input argument is not a non-negative interger! 
>> timeFibLoop(20)
Warning: The measured time for F may be inaccurate because it is running too fast. Try measuring something that takes longer. 
> In timeit (line 158)
  In timeFibLoop (line 5) 
ans = 
  struct with fields:

          n: 20
        fib: 6765
    runtime: 3.0195e-06
>> timeFibLoop('austin')
Error using timeFibLoop (line 7)
The input argument is not a non-negative integer 
```

B
```bash
N = 1:35;
L = length(N);
    for i = L:-1:1
    OutputTimeFib(i) = timeFib(N(i));
    OutputTimeFibLoop(i) = timefibloop(N(i));
    writetable(struct2table(OutputTimeFib),'fibOutput.txt')
    writetable(struct2table(OutputTimeFibLoop),'fibLoopOutput.txt')
    end
```
