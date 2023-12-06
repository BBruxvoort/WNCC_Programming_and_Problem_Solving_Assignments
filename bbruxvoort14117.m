% Script File: bbruxvoort14117.m
%
% Purpose:
%   The program solves a tempurature conversion from Celsius to etiher
%   Fahrenheit or Kelvin depending on the user's input.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/8/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
%   temp_c          -- Tempurature in Celsius
%   F_or_K          -- Tempurature Conversion wanted in either F Fahrenheit
%                      or K Kelvin
%
%

clear
clc

% Allows the user to input the tempurature in Celsius and what they want it
% to be converted into, Fahrenheit or Kelvin.
temp_c = input('Input the tempurature in Celsius: ');
F_or_K = input('Enter what tempurature you want Celsius to be coverted to, enter F for Fahrenheit or K for Kelvin ','s');

% Sets up an if-else code block that sees what the user inputs and then preforms
% and displays the correct conversion.
if (F_or_K == 'F')
    F = (9/5) .* temp_c + 32;
    disp(['The temp in degrees F is ' num2str(F)]);
elseif (F_or_K == 'K')
    K = temp_c + 273.15;
    disp(['The temp in degrees K is ' num2str(K)]);
else
    disp('Not a valid option for conversion ');
end
