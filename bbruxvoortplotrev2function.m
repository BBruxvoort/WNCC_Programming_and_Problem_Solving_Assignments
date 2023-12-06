function [Length]= bbruxvoortplotrev2function(func, xmin, xmax, xrange)

% Estimate the length of a curve by finding the sum of straight line
% segments.
%
% Purpose:
%   The program solves two equations for y based on a range given by the user
%   of x. Then it plots the data with red lines. Then plots the
%   approximationb line with blue circles and blue connecting lines.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       2/17/22         Brian Bruxvoort     Original Code     
%       2/22/22         Brian Bruxvoort     Revision to approximate the
%                                           arc length of an equation given 
%                                           by the user.
%       3/1/22          Brian Bruxvoort     Revision to make a function
%                                           work from inputs on a different 
%                                           m file.
%
% Define Variables:
%   
%   func         -- Stores the equation the user inputs as the variable
%                   func
%   xmin         -- Requests an input from the user for minimum value of x.
%   xmax         -- Requests an input from the user for maximum value of x.
%   xrange       -- Requests an input from the user for range of data points wanted from x.
%   x            -- Creates the range of x values based on the minimum and
%                   maximum inputs
%   y            -- Find the y values by evaluating the function for all the x values found 
%   x_seg        -- Finds the x values of the segments.
%   x_start      -- Finds the starting x value of the segment.
%   x_end        -- Finds the ending x value of the segment.
%   y_seg        -- Finds the y values of the segments.
%   y_start      -- Finds the starting y value of the segment.
%   y_end        -- Finds the ending y value of the segment.
%   L            -- Finds the arc length of the line segments based on the x
%                   start, x end, y start, and y end.
%   total_length -- Adds all the lengths up for the approximation.
%
% typical usage: bbruxvoortplotrev2function('4.*x.^2-2.*x+3', 0, 4, 8)
%

% Creates the range of x values based on the minimum, maximum and requested
% data range.
x=linspace(xmin,xmax,10000);

% Find the y values by evaluating the function for all the x values found.
y=eval(func);
plot(x,y,'r-')

% Calculate the x values of the line segments
x=linspace(xmin,xmax,xrange+1);

x_start = x;
x_start(end) = [];

x_end = x;
x_end(1) = [];

% Calculate the y values of the line segments
y_seg=eval(func);

y_start = y_seg;
y_start(end) = [];

y_end = y_seg;
y_end(1) = [];

% This equation gives us the arc length of the line segments based on the x
% start, x end, y start, and y end.
Length=sqrt((y_end-y_start).^2+(x_end-x_start).^2);

% Adds all the lengths up for the approximation.
total_length=sum(Length);

% Plot x and y with blue circles as the points and connecting blue lines,
% and the base equation with red lines
hold on
plot(x,y_seg,'bo')
plot(x,y_seg,'b-')
hold off

% Label the axis, title, and legend
xlabel('X Values');
ylabel('Y Values');
title(['The approximate length of ', func, 'is '  num2str(total_length)]);
legend('Exact Curve','Approximation using line segments')
