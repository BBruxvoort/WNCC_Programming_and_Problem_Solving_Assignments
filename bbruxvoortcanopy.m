% filename: bbruxvoortcanopy.m
%
% Purpose:
%   The program generates four plots. The first is of the original image.
%   The second plot creates a blurred image where the user will select two 
%   points. From these two points the program will generate an average color 
%   from the picture, then it displays it. Lastly it displays the original 
%   image but with green as the values inside the average color range, and 
%   red for those outside the range. 
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       4/14/22         Brian Bruxvoort      Original Code
%
% Define Variables:
%   
% imagepic      -- Stores the inputed jpg into a variable
% pic           -- Reads the filename of the image and stores it as a variable
% kernal        -- Creates the base kernal that will be used to go over
%                  each pixel in the image
% blurred       -- Creates a copy of the original image 
% a             -- Stores the values of the rows for the image 
% b             -- Stores the values of the columns for the image
% row           -- Finds the size of the row vector of pic
% col           -- Finds the size of the column vector of pic
% layer         -- Finds the size of the layer vector of pic
% sum           -- Adds all the blurred values up and divides by 9
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
% trow          -- Finds the size of the row vector of the new pic
% tcol          -- Finds the size of the column vector of the new pic
% total         -- Multiplies the trow and tcol together to find the total
%                  pixels in the image.
% green         -- Adds all the green pixel values together
% decimal       -- Finds the decimal of green pixel values to the total
%                  amount of pixels
% percentage    -- Converts the decimal to a percent value
%

clear
clc

% Have the user input the file name of an image and then read it
imagepic = input('Enter the filename of the image without quotes: ','s');
pic = imread(imagepic);

% Plot the original image
subplot(2,2,1)
image(pic)
title('Original Image')

% Blur the original image using a Gaussian kernal 
kernal = [1/16 2/16 1/16; 2/16 4/16 2/16; 1/16 2/16 1/16];
[row, col, layer] = size(pic);
blurred = pic; 

for a = 2:row-1
    for b = 2:col-1
        blurred(a,b,1) = pic(a-1,b-1,1) .* kernal(1,1) + ...
            pic(a-1,b,1) .* kernal(1,2) + pic(a-1,b+1,1) .* kernal(1,3) + ...
            pic(a,b-1,1) .* kernal(2,1) + pic(a,b,1) .* kernal(2,2) + ...
            pic(a,b+1,1) .* kernal(2,3) + pic(a+1,b-1,1) .* kernal(3,1) + ...
            pic(a+1,b,1) .* kernal(3,2) + pic(a+1,b+1,1) .* kernal(3,3);
        blurred(a,b,2) = pic(a-1,b-1,2) .* kernal(1,1) + ...
            pic(a-1,b,2) .* kernal(1,2) + pic(a-1,b+1,2) .* kernal(1,3) + ...
            pic(a,b-1,2) .* kernal(2,1) + pic(a,b,2) .* kernal(2,2) + ...
            pic(a,b+1,2) .* kernal(2,3) + pic(a+1,b-1,2) .* kernal(3,1) + ...
            pic(a+1,b,2) .* kernal(3,2) + pic(a+1,b+1,2) .* kernal(3,3);
        blurred(a,b,3) = pic(a-1,b-1,3) .* kernal(1,1) + ...
            pic(a-1,b,3) .* kernal(1,2) + pic(a-1,b+1,3) .* kernal(1,3) + ...
            pic(a,b-1,3) .* kernal(2,1) + pic(a,b,3) .* kernal(2,2) + ...
            pic(a,b+1,3) .* kernal(2,3) + pic(a+1,b-1,3) .* kernal(3,1) + ...
            pic(a+1,b,3) .* kernal(3,2) + pic(a+1,b+1,3) .* kernal(3,3);
    end
end

% Plot the blurred image
subplot(2,2,2)
image(blurred)
title('Original Image Guassian Blurred')

% Turns the picture from rgb to hsv 
[nrow, ncol, nlayer] = size(pic);
hsvpic = rgb2hsv(pic);
color = hsvpic;

% Explain to the user how to select the color they want to keep in the
% image
disp('Using the first click select anywhere on the second image to create the top left ')
disp('corner of your desired color square.')
disp(' ')
disp('Using the second click select anywhere on the second image to create the bottom right ')
disp('corner of your desired color square.')

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

% Create a loop that finds the average value of each pixel in hsv format
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
subplot(2,2,3)
image(averagecolor)
title('Canopy Color to Retain')

% Take the average color and take only the hue in range of that color
tol = input('Enter the tolerance level of the color, exp. 0.1: ');

% Creates a loop that finds if the value of the pixel is within the color
% tolerance range and then turns it into either green or red
newpic = pic;
for i = 1:nrow
    for j = 1:ncol
        if (hsvpic(i,j,1) > (averageh/n + tol)) || (hsvpic(i,j,1) < (averageh/n - tol))
            newpic(i,j,1) = uint8(238);
            newpic(i,j,2) = uint8(75);
            newpic(i,j,3) = uint8(43);
        elseif (hsvpic(i,j,1) < (averageh/n + tol)) || (hsvpic(i,j,1) > (averageh/n - tol))
            newpic(i,j,1) = uint8(102);
            newpic(i,j,2) = uint8(255);
            newpic(i,j,3) = uint8(0);
        end
    end
end

% Calculate the percentage of green pixels in the image
[trow, tcol] = size(newpic);
total = trow .* tcol/3;
green = sum(sum(newpic(:,:,1) == 102 & newpic(:,:,2) == 255 & newpic(:,:,3) == 0));
decimal = green ./ total;
format SHORT 
percentage = decimal * 100;

% Plot the fourth image with only green and red 
subplot(2,2,4)
image(newpic)
title(['Canopy Shown in Green = ', num2str(percentage),'%'])
