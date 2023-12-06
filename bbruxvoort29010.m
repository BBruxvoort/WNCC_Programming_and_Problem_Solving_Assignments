% Script File: bbruxvoort29010.m
%
% Purpose:
%   The program will loop three times each time asking the user to enter a
%   vector. The it will store vectors in a cell array. Then it will print
%   the lengths of the vectors in the cell array.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       4/19/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%  
%   a           -- a's only purpose is to go through a loop 3 times,
%                  counting each time
%   cellarrays  -- Stores each of the three vectors in a cell array
%

clear
clc

% Create a loop that loops 3 times each time asking the user for a vector.
% Then it stores that vector.
for a = 1:3
    cellarrays{a} = input('Enter a vector: ');
end

% Creates a loop that prints all the vectors and their length.
for a = 1:3
    fprintf('The length of vector %d is %d\n', a, length(cellarrays{a}))
end

