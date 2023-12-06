% Script File: bbruxvoort07139.m
%
% Purpose:
%   The program will ask the user how many terms it wants to take from.
%   Then it will display all the even and odd numbers that it gets from the
%   50 to 100 range.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       2/15/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%  
%   n                  -- number of terms wanted between 50 and 100
%   A                  -- Random integers generated from 50 to 100 given
%                         the input value
%   B                  -- Finds all even numbers between 50 and 100
%   C                  -- Finds all odd numbers between 50 and 100
%   evens              -- Finds the even numbers from the random range
%   odds               -- Finds the odd numbers from the random range
%
%

clear
clc

% Ask the user how many it terms it wants to recieve
n=input('number of terms wanted ');

% Find the random numbers in the range between 50 and 100 based on the
% number of terms the user wants.
A = randi([50,100],1,n);

% Find all the even numbers and odd numbers, and then store them.
B = 50:2:100;
C = 51:2:100;

% Intersect the odd and even numbers with the random numbers that were
% generated.
evens= intersect(A,B);
odds= intersect(A,C);

% Display the even and odd numbers that have been randomly selected.
disp(['even numbers given ' num2str(evens)])
disp(['odd numbers given ' num2str(odds)])