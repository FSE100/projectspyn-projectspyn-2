%Prime Number Checker - Uriel Lopez

clc; clear all; close all;

result = 'true';

n1 = input('What is n1?\n');

if (n1 == 1)
    result = false;
else if (n1 == 2)
        result = true;
    else
        for i = 2:n1-1
            if (mod(n1,i) == 0)
                result = false;
            end
        end
    end
end

if (result)
    result = 'n1 is prime';
else
    result = 'n1 is not prime';
end

disp(result)


