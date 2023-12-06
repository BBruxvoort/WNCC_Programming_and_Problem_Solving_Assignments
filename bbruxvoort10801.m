% Script File: bbruxvoort10801.m
%
% Purpose:
%   The program solves a volume equation of a hollow sphere. The equation
%   will be solved when the user inputs two radii with units.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       2/15/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
%   R_o                    -- Radius of the outer in meters
%   R_i                    -- Radius of the inner in meters
%   Volume_hollowsphere    -- Volume of the hollow sphere once the radii
%   are known
%   
%
%
%
%
%

clear
clc

% Prompt the user to input to enter numbers with units
R_o = input('Enter the outer radius in meters ');
R_i = input('Enter the inner radius in meters, must be less than outer radius ');
 
% Calculate the Volume of the hollow sphere
Volume_hollowsphere=(4*pi/3)*((R_o.^3)-(R_i.^3));

% Displays the volume of the hollow sphere with units
disp(['Volume is = ' num2str(Volume_hollowsphere,5) ' m^3'])