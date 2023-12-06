% filename: bbruxvoortcolorsave.m
%
% Purpose:
%   The program generates three plots. The first is of the original image
%   and allows the user to select two points on the image. From these two
%   points the program will generate an average color from the picture,
%   then it displays it. Lastly it displays the original image but with
%   only the average color in it, with the last in grayscale. 
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       4/7/22         Brian Bruxvoort      Original Code
%
% Define Variables:
%   
% imagepic      -- Stores the inputed jpg into a variable
% pic           -- Reads the filename of the image and stores it as a variable
% nrow          -- Finds the size of the rows from the pic and stores it
% ncol          -- Finds the size of the columns from the pic and stores it
% nlayer        -- Finds the size of the layers from the pic and stores it
% hsvpic        -- Turns the image from an RGB to an HSV 
% color         -- Stores hsvpic in a variable so it doesn't get mixed up
%                  in other calculations
% point1        -- Finds the first point the user selects
% point2        -- Finds the second point the user selects
% col1          -- Floors the first value of the column 
% row1          -- Floors the first value of the row 
% col2          -- Floors the second value of the column
% row2          -- Floors the second value of the row 
% averageh      -- Finds the average v value of the square
% averages      -- Finds the average v value of the square
% averagev      -- Finds the average v value of the square
% n             -- Number of times gone through the loop to find number of
%                  pixels across the square
% i             -- Stores the values of the columns from the selected
%                  points
% j             -- Stores the values of the rows from the selected points
% rgbcolor      -- Turns the hsv image back into an rgb image
% averagecolor  -- Multiples the small rgb color values by 255 so that it
%                  gets back into a color scale
% tol           -- has the user input the desired tolerance level of the
%                  average color
% newpic        -- Stores the newpic as the original pic before starting
%                  the loop that will go through each pixel and decide if
%                  it is within the average color range tolerance. If it
%                  isn't it will turn the pixel the grayscale. If it is in
%                  the range, it will keep the color. It will do this to
%                  all three layers of the rgb image before spitting out
%                  the final new picture.
%

clear
clc

% Have the user input the file name of an image and then read it
imagepic = input('Enter the filename of the image without quotes: ','s');
pic = imread(imagepic);

% Turns the picture from rgb to hsv 
[nrow, ncol, nlayer] = size(pic);
hsvpic = rgb2hsv(pic);
color = hsvpic;

% Plot the original image
subplot(2,2,1)
image(pic)
title('Original Image')

% Explain to the user how to select the color they want to keep in the
% image
disp('Using the first click select anywhere on the image to create the top left corner ')
disp('of your desired color square.')
disp(' ')
disp('Using the second click select anywhere on the image to create the bottom right corner ')
disp('of your desired color square.')

% Round the two selected cordinates down 
point1 = (ginput(1));
point2 = (ginput(1));
col1 = floor(point1(1));
row1 = floor(point1(2));
col2 = floor(point2(1));
row2 = floor(point2(2));

% Set the variables to zero before loop is initiated
averageh = 0;
averages = 0;
averagev = 0;
n = 0;

% Create a low that 
for i = row1:row2
   for j = col1:col2
       n = n + 1;
       averageh = averageh + hsvpic(i,j,1);
       averages = averages + hsvpic(i,j,2);
       averagev = averagev + hsvpic(i,j,3);
   end
end

% Find the average value of the row and the column, and then put them
% together to create one value of color
color(:,:,1) = averageh/n;
color(:,:,2) = averages/n;
color(:,:,3) = averagev/n;
rgbcolor = hsv2rgb(color);
averagecolor = uint8(255 * rgbcolor);

% Plot the average color selected by the user
subplot(2,2,2)
image(averagecolor)
title('Average color')

% Take the average color and take only the hue in range of that color
tol = input('Enter the tolerance level of the color, exp. 0.1: ');

newpic = pic;
for i = 1:nrow
    for j = 1:ncol
        if (hsvpic(i,j,1) > (averageh/n + tol)) || (hsvpic(i,j,1) < (averageh/n - tol))
            newpic(i,j,1) = uint8(0.2989 .* pic(i,j,1) + 0.5870 .* pic(i,j,2) + 0.1140 .* pic(i,j,3));
            newpic(i,j,2) = newpic(i,j,1);
            newpic(i,j,3) = newpic(i,j,1);
        end
    end
end

% Plot the third image with only one color and the rest in grayscale
subplot(2,2,3)
image(newpic)
title('New Image with one Color')
