% Script File: bbruxvoort13904.m
%
% Purpose:
%   The program determines if the person is a candidate or
%   not based on their systolic and diastolic readings.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/8/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
%   systolic         -- Prompts user to input systolic blood pressure reading
%   diastolic        -- Prompts user to input diastolic blood pressure reading
%
%
%

clear
clc

% Prompts user to input systolic and diastolic blood pressure readings
systolic = input('Enter your systolic blood pressure: ');
diastolic = input('Enter your diastolic blood pressure: ');

% Sets up an if-else block that determines if the person is a candidate or
% not based on their inputs
if (systolic > 120)
    disp('Not a candidate');
elseif (diastolic > 80)
    disp('Not a candidate');
else
    disp('Person is candidate');
end

