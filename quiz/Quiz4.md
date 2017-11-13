QUIZ 4 ANSWERS:


A)
function output = getFracWhile(n)
output = n;
    while n>1
        output = output*n;
        n = n - 1;
    end
    disp(output)
end


B)
function getFracFor(n)
if (n==1)
    disp('factorial = 1');
elseif (n==2)
    disp('factorial = 2');
else
    for ii = n:-1:1
        output = output*ii;
    end
end

end

C
function getFracVec(n)
v = 1:n;
prod(v);
end


PROBLEM 2
function timeFacFuncs(n)
f = @() getFacWhile(n);
    disp([ char(9) 'average runtime: ' num2str(timeit(f))]);
f = @() getFacFor(n);
    disp([ char(9) 'average runtime: ' num2str(timeit(f))]);
f = @() getFacVec(n);
    disp([ char(9) 'average runtime: ' num2str(timeit(f))]);
