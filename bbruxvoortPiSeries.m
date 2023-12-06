function [pi_estimate] = bbruxvoortPiSeries(nend)

% Description: Loops n to find the approximate value of pi.
%
% Purpose:
%   The program will ask how many terms the user wants, and then uses those
%   terms to accurately approximate pi. The higher the number the user
%   inputs, the more accurate pi will be.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       2/15/22         Brian Bruxvoort     Original Code
%       3/7/22          Brian Bruxvoort     Turned into a function that
%                                           loops instead.
%
% Define Variables:
%   
%   nend             -- number of terms wanted to approximate pi based on
%                       the user's input
%   n                -- Creates a loop that stores a vector based on
%                       the length of nend
%   numerator        -- Creates a vector of n length of ones repeating
%                       signs
%   denominator      -- Creates a vector that increases by 2 every time
%   ratio            -- Creates a ratio to approximate pi based on the 
%                       numerator and denominator
%   pi_estimate      -- Turns the ratio into a decimal value approximation
%                       of pi
%
% Typical usage: bbruxvoortPiSeries(101)
%

% Ask the user how many it terms it wants to approximate pi
% nend=input('number of terms wanted to approximate pi ');

% Creates two loops to approximate pi 
pi_estimate = 0;
for n = 1:nend
    numerator = (-1).^(n-1);
    denominator = 2*n-1;
    ratio = (numerator./denominator);
    pi_estimate = pi_estimate + ratio;
end
pi_estimate = 4*pi_estimate;
