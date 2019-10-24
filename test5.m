%Multiplicity - Uriel Lopez

clc; clear all; close all;

n1 = input('What is n1?\n');
n2 = input('What is n2?\n');

if mod(n2, n1) == 0;
    disp('n1 is a multiple of n2');
else n1 = n2;
    disp('n1 is not a multiple of n2')
end

