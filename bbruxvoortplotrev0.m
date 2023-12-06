% Script File: bbruxvoortplotrev0.m
%
% Purpose:
%   The program solves two equations for y based on a range given by the user
%   of x. Then it plots the data with blue circles and blue connecting
%   lines, and the other with red circles and red connecting lines.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       2/17/22         Brian Bruxvoort     Original Code     
%
% Define Variables:
%   
%   xmin     -- Requests an input from the user for minimum value of x.
%   xmax     -- Requests an input from the user for maximum value of x.
%   xrange   -- Requests an input from the user for range of data points wanted from x.
%   x        -- Creates the range of x values based on the minimum, maximum and requested
%               data range.
%   y1       -- Equation for y based on the given x values.
%   y2       -- Equation for y based on the given x values.
%

clear
clc

%
xmin=input('enter minimum value of x wanted for the equation ');
xmax=input('enter maximum value of x wanted for the equation, must be greater than the minimum value of x ');
xrange=input('enter the number of data points wanted for the range of x ');

% Creates the range of x values based on the minimum, maximum and requested
% data range.
x= linspace(xmin,xmax,xrange);

% Equations for y based on the given x values
y1=2.*x.^2+1;
y2= x.^3-4;

% Plot x and y with blue circles as the points and connecting blue lines,
% and with red circles as points and connecting red lines
hold on
plot(x,y1,'bo')
plot(x,y1,'b-')
plot(x,y2,'ro')
plot(x,y2,'r-')
hold off

% Label the axis and title
xlabel('X Values');
ylabel('Y Values');
title('Graph of f(x)=2x^2+1 and f(x)=x^3-4');



