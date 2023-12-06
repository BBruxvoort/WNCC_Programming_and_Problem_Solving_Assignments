% Script File: bbruxvoortEPps07.m
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
%
% Define Variables:
%   
%   n                -- number of terms wanted to approximate pi based on
%                       the user's input
%   e                -- Creates a variable that stores a vector based on
%                       the length of n
%   numerator        -- Creates a vector of n length of ones repeating
%                       signs
%   denominator      -- Creates a vector that increases by 2 every time
%   ratio            -- Creates a ratio to approximate pi based on the 
%                       numerator and denominator
%   series           -- Turns the ratio into a decimal value approximation
%                       of pi
%

clear
clc

% Ask the user how many it terms it wants to approximate pi
n=input('number of terms wanted to approximate pi ');

% Stores the values both positive and negative to approximate pi, stores
% them in a numerator and denominator variables
e=0:n-1;
numerator=(-1).^e;
denominator=1:2:n*2;

% Finds the ratio to approximate pi based on the numerator and denominator
ratio= 4*(numerator./denominator);

% Finds the sum of all the values of the ratio
series= sum(ratio');

% Displays the approximate value of pi
disp(['approximate value of pi ' num2str(series)])