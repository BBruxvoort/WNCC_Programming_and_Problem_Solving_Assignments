function [prodby2] = bbruxvoort18508(~)

% Determine the product of values in steps of 2 starting at 1 up to n.
%
% Purpose:
%   The program generates a random integer and loops it to find the product
%   of all the odd numbers in that range.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/7/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% n             -- Creates a random integer from 1 to 10.
% prodby2       -- Loops the numbers into the product equation and spits out a
%                  number.
% x             -- Vector range in steps of 2 starting at 1.
%
% Typical use: bbruxvoort18508
%

% Creates a random integer from 1 to 10.
n = randi(10);

% Preform the loop to multiply up all the values in steps of 2 up to a number n.
prodby2 = 1;
for x = 1:2:n
    prodby2 = prodby2 .* x;
end