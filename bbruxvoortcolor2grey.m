function bbruxvoortcolor2grey(filename)

% Plot three images with an original, grayscale, and b/w version.
%
% Purpose:
%   The program generates three plots of three of the same images. The
%   first image displayed is the original image with all colors. The second
%   image displayed is the image but in grayscale. The third image diplayed
%   is in black and white.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/31/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% pic       -- Reads the filename of the image and stores it as a variable
% image     -- Turns the image into a double variable class
% R         -- Stores the first layer of red colors
% G         -- Stores the second layer of red colors
% B         -- Stores the third layer of red colors
% gray      -- Turns every pixel from every layer into one value or shade
%              of gray
% black     -- Determines if the greyscale value is greater than 127 using
%              a threshold of 0.5 and then it turns the grey value into a
%              black pixel, if it is not over the threshold then it
%              turns it into a white pixel
%
% Typical use: bbruxvoortcolor2grey('filename')
%

% Read the filename of the image and store it. Then store the image as a
% double variable
pic = imread(filename);
image = im2double(pic);

% Plot the original image on multiple plots
subplot(2,2,1)
imshow(pic);
title('Original Image')

% Turn the original image into a grayscale image 
R = image(:,:,1);
G = image(:,:,2);
B = image(:,:,3);
grey = 0.2989 .* R + 0.5870 .* G + 0.1140 .* B;

% Plot the gray scale image
subplot(2,2,2)
imshow(grey);
title('Grayscale Image')

% Turn the grayscale image into a black and white image by setting a
% threshold
black = (grey > 0.5);

% Plot the black and white image
subplot(2,2,4)
imshow(black);
title('Black and White Image')
