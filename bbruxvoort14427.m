% Script File: bbruxvoort14427.m
%
% Purpose:
%   The program solves the area of a cylinder, circle, or rectangle based
%   on what option the user chooses from the menu. Whatever option is
%   chosen the user will then input the dimensions and it will be solved.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/22/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% areaMenu        -- Displays an menu for the user to chose which area
%                    they want to find
% cylinderradius  -- User inputs the radius of the cylinder
% cylinderheight  -- User inputs the height of the cylinder
% cylinderarea    -- Solves the surface area of the cylinder based on
%                    height and radius
% circleradius    -- User inputs the radius of the circle
% circlearea      -- Solves the area of the circle based on radius
% rectanglelength -- User inputs the height of the rectangle
% rectanglewidth  -- User inputs the width of the rectangle
% rectanglearea   -- Solves the area of the rectangle based on height and 
%                    width
%


clear
clc

% Displays an menu for the user to chose which area they want to find
areaMenu = menu('Please choose one', '1. Cylinder', '2. Circle', '3. Rectangle');

% If the cylinder is chosen then it asks the user for the dimensions and
% solves for the surface area of the cylinder
if (areaMenu == 1)
    cylinderradius = input('Enter the radius of the circle: ');
    cylinderheight = input('Enter the height of the cylinder: ');
    cylinderarea = (((2.*pi.*cylinderradius).*cylinderheight) + 2.*(pi.*cylinderradius.^2));
    disp(['The area of the cylinder is ' num2str(cylinderarea)]);
end

% If the circle is chosen then it asks the user for the radius and
% solves for the area of the circle
if (areaMenu == 2)
    circleradius = input('Enter the radius of the circle: ');
    circlearea = pi.*circleradius.^2;
    disp(['The area of the circle is ' num2str(circlearea)]);
end

% If the rectangle is chosen then it asks the user for the dimensions and
% solves for the area of the rectangle
if (areaMenu == 3)
    rectanglelength = input('Enter the length of the rectangle: ');
    rectanglewidth = input('Enter the width of the rectangle: ');
    rectanglearea = rectanglelength .* rectanglewidth;
    disp(['The area of the rectangle is ' num2str(rectanglearea)]);
end
    