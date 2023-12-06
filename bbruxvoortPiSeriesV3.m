function [error] = bbruxvoortPiSeriesV3(epsilon)

% Description: Loops n to find the approximate value of pi until it reaches
%              the error constraint wanted by the user.
%
% Purpose:
%   The program runs a while loop to approximate pi and stops when it
%   reaches an approximation of pi within the error constraint designated
%   by the user.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       2/15/22         Brian Bruxvoort     Original Code
%       3/7/22          Brian Bruxvoort     Turned into a function that
%                                           loops instead.
%       3/28/22         Brian Bruxvoort     Turns 
%
% Define Variables:
%   
%   epslion        -- The amount of error the user wants the
%                     approximation for pi to be within
%   n              -- The amount of times the loop has been executed
%   numerator      -- Creates a vector of n length of ones repeating
%                     signs
%   denominator    -- Creates a vector that increases by 2 every time
%   ratio          -- Creates a ratio to approximate pi based on the 
%                     numerator and denominator
%   oldsum         -- The sum approximation of pi based on the last loop
%                     executed
%   newsum         -- The sum approximation of pi for the current loop
%                     interval
%   error          -- The amount of difference between the newsum and
%                     oldsum variables
%
% Typical usage: bbruxvoortPiSeriesV3(.001)
%

% Initialize the variables before the while loop begins 
n = 0;
newsum = 0;
oldsum = 0;
error = 1000;

% A while loop is created that repeats an equation to approximate pi, and
% stops the loop when it reaches an approximation of pi that is within the
% error constraint the user has input
while error > epsilon
    n = n+1;
    numerator = (-1).^(n-1);
    denominator = 2*n-1;
    ratio = (numerator./denominator);
    newsum = newsum + ratio;
    error = abs(newsum - oldsum);
    oldsum = newsum;
end

% Displays the number of times it looped to reach the error constraint and
% displays the value of pi it created.
disp(['Number of times looped to reach error constraint: ' num2str(n)])
format long
disp(['Approximate value of pi based on the error constraint: ' num2str(4*oldsum)])