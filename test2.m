%Largest Number v2 - Uriel Lopez

clc; clear all; close all;

n1 = input('What is n1?\n');
n2 = input('What is n2?\n');
n3 = input('What is n3?\n');

if n1 > n2 && n1 > n3
    disp('n1 is the largest');
else if n2 > n1 && n2 > n3
        disp('n2 is the largest');
    else if n3 > n1 && n3 > n2
            disp('n3 is the largest');
        else if n3 == n1 && n3 == n2
                disp('n3, n2, and n1 are the same');
            end
        end
    end
end