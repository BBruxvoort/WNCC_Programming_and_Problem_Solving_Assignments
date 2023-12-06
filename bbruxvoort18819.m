% Script File: bbruxvoort18819.m
%
% Purpose:
%   The program displays the approximate value of e^-1 after it determines
%   the value of n, which approximates it to when it is less than 0.0001.  
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/28/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% inverse     -- Sets the base for the inverse value of e^-1
% n           -- Sets number to go through the loop
% estimate    -- Estimates e^-1 based on whatever number n is at the time
%
%

clear
clc

% Sets up a while loop that keeps sending n through until it reaches the
% value of 0.0001
inverse = 1/exp(1);
n = 1;
estimate = (1-(1/n))^n;
while 0.0001 < abs(inverse-estimate)
    n = n+1;
    estimate = (1-(1/n))^n;
end

% Displays the value of e^-1 and the number of loops it took to get to the
% value.
format short
disp(['Value of e^-1: ' num2str(1/exp(1))])
disp(['The amount of loops to approximate e^-1: ' num2str(n)])