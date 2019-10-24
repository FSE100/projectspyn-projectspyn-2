%Ascending Numbers - Uriel Lopez

clc; clear all; close all;

n1 = input('What is n1?\n');
n2 = input('What is n2?\n');
n3 = input('What is n3?\n');

if n3 >= n2 && n2 >= n1
    disp('The numbers are in ascending order');
else 
    disp('The numbers are not in ascending order');
end
