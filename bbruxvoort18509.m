% Script File: bbruxvoort18509.m
%
% Purpose:
%   The program generates a random integer from 2 to 5 and then prompts the
%   user for a number as many times as the range allows, and then sums all
%   those entered numbers up.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/7/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% range       -- Creates a random integer from 2 to 5.
% num         -- Asks the user to input a number.
% sum         -- Keeps adding the numbers entered until it reaches the max
%                number of entries based on the range.
% x           -- Vector range starting at 1 going up to the random number from the range.
%
% Typical use: bbruxvoort18509
%

% Generate a random integer.
range = randi([2,5]);

% Prompts the user for a number as many times as the range allows and then
% adds them all together.
sum = 0;
for x = 1:range
    num = input('Enter a number: ');
    sum = sum + num;
    fprintf('The sum is %.0f\n',sum)
end


