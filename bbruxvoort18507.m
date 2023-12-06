function [sumsteps2] = bbruxvoort18507(n)

% Determine the sum of values in steps of 2 starting at 1 up to n.
%
% Purpose:
%   The program asks the user to input a value and then sums up the numbers
%   in steps of 2.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/7/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% sumsteps2     -- Loops the numbers into the sum equation and spits out a
%                  number.
% x             -- Vector range in steps of 2 starting at 1.
%
% Typical use: bbruxvoort18507(11)
%

% Preform the loop to sum up all the values in steps of 2 up to a number n.
sumsteps2 = 0;
for x = 1:2:n
    sumsteps2 = sumsteps2 + x;
end
