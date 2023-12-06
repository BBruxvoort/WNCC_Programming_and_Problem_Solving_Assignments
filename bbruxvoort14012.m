% Script File: bbruxvoort14012.m
%
% Purpose:
%   The program displays what categorization a pH level is based on the
%   given input pH value.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/8/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
%   pH         -- Prompts user to input the pH level
%
%
%

clear
clc

% Prompts user to input the pH level.
pH = input('Enter the pH level: ');

% Sets up an if-else block that displays what categorization a pH level is.
if (pH == 7)
    disp('neutral pH level');
elseif (pH > 14)
    disp('invalid pH level');
elseif (pH < 0)
    disp('invalid pH level');
elseif (pH > 7)
    disp('basic pH level');
elseif (pH < 7)
    disp('acidic pH level');
else
    disp('invalid pH level');
end