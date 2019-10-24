%Summation - Uriel Lopez

clc; clear all; close all;

n1 = input('What is n1?\n');
n2 = input('What is n2?\n');

sum = 0;

for i = n1:n2;
    sum = sum + i;
end

X = sprintf('The sum of integers between n1 and n2 is %i', sum);
disp(X);
return