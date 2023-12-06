% Script File: bbruxvoort07142.m
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
%   n                  -- number of terms in the vector based on the user's
%                         input
%   vec                -- Gets the number of terms the user wants and gives
%                         them a value between 1 and 9.
%   first_half         -- Finds the first half of vector
%   second_half        -- Finds the second half of the vector 
%                 
%
%

clear
clc

% Ask the user how many it terms it wants to recieve
n=input('number of terms wanted in the vector ');

% Find the number of terms the user wants between 1 and 9
vec = randi([1,9],1,n);

% Find the first and second halves of the vector
first_half = vec(1:fix(n/2));
second_half = vec(fix((n/2)+1):fix(n));

% Display the terms from the first and second halves of the vector
disp(['first half of the vector ' num2str(first_half)])
disp(['second half of the vector ' num2str(second_half)])