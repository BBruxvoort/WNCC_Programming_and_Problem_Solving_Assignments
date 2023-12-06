% Script File: bbruxvoort29011.m
%
% Purpose:
%   The program will have the user enter their name, student ID number, and
%   GPA, and store them in a cell array. Then it will print the information
%   entered.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       4/19/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%  
%   name          -- Has the user input the name of the student
%   number        -- Has the user input the University number of the student
%   gpa           -- Has the user input the GPA of the student
%   studentinfo   -- Stores all three inputs in an array
%

clear
clc

% Allows the user to input the name, university number, and GPA of the
% student
name = input('Enter your first and lastname: ','s');
number = input('Enter your University number: ');
gpa = input('Enter your GPA: ');

% Stores the three inputs in an array
studentinfo = {name, number, gpa};

% Displays the name, university number, and GPA of the student
fprintf('Name: %s \t ID: %d \t GPA: %.2f \n',studentinfo{1,1}, studentinfo{1,2}, studentinfo{1,3});
