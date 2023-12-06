
% Script File: bbruxvoortPiSeriesV4.m
%
% Purpose:
%   The program will have the user input a large number and will then
%   approximate pi using a loop.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       4/19/22         Brian Bruxvoort     Original Code
%
% Define Variables:
% 
% n        -- Has the user enter a large number to approximate pi
% x        -- Creates a random number between 0 and 1
% y        -- Creates a random number between 0 and 1
% b        -- Adds the values of all the pi estimates up every time it goes
%             through the loop
% a        -- Just loops through all the times the user inputed
% approxpi -- Creates the pi approximation
%

clear
clc

% Has the user input a very large number to approximate pi
n = input('Enter a very large number, for example 1 million: ');

% Initializes the variables before the loop
x = 0;
y = 0;
b = 0;

% Creates a loop that goes through and creates a random number for x and y,
% then decides if when it gets put into the equation if it is less than 1.
% If it is then it counts it and adds it up.
for a = 1:n
    x = rand(1);
    y = rand(1);
    if x^2 + y^2 <= 1
        b = b + 1;
    end
end

% Creates a ratio to approximate pi
approxpi = b * 4 / n;

% Displays the pi approximation
fprintf('Approximation of Pi: %.6f \n', approxpi)


