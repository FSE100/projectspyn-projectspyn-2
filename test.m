%Largest Number - Uriel Lopez

clc; clear all; close all;

n1 = input('What is n1?\n');
n2 = input('What is n2?\n');

if n1 > n2
    disp('n1 is the largest');
else if n1 < n2
        disp('n2 is the largest');
    else n1 = n2;
        disp('n2 is equal to n1')
    end
end
