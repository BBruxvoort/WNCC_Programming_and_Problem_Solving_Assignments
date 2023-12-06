function bbruxvoortcolor2grayV2(filename)

% Plot three images with an original, grayscale, and second grayscale version.
%
% Purpose:
%   The program generates three plots of three of the same images. The
%   first image displayed is the original image with all colors. The second
%   image displayed is the image but in grayscale. The third image diplayed
%   is in grayscale but with a grayscale level inputed by the user.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/31/22         Brian Bruxvoort     Original Code
%       4/5/22          Brian Bruxvoort     Allowed user to decide what
%                                        level of grayscale value they want
%
% Define Variables:
%   
% pic            -- Reads the filename of the image and stores it as a variable
% n              -- Input from the user of the desired grayscale level
% gray(:,:,1)    -- Takes the whole first layer of the image and turns each
%                   pixel into a shade of gray, with a value between 0 and 255
% gray(:,:,2)    -- Does the same thing as the first layer just for the
%                   second layer
% gray(:,:,3)    -- Does the same thing as the first layer just for the
%                   second layer
% newlevel       -- Creates a base level of a ratio by taking 256 over the
%                   user input
% graylevel      -- Reduces each number from the gray variable to 0,1,2,3
%                   using the newlevel factor and the floor function, which
%                   makes each real number an integer
% i              -- Creates an evenly spaced vector from 0 to 255 based on
%                   the number specified by the user
% t              -- Takes the second term in the linspace minus the first
%                   to find a scaling factor
% graylevelimage -- Turns the graylevel value back into a larger number
%                   while specifying we are using uint8 variable class
%
% Typical use: bbruxvoortcolor2grayV2('filename')
%

% Read the filename of the image and store it. Then ask the user to input a
% number they want the grayscale factor to be in.
pic = imread(filename);
n = input('Input grayscale level by a factor of 2 (ex. 2, 4, 8, 16): ');

% Plot the original image on multiple plots
subplot(2,2,1)
imshow(pic);
title('Original Image')

% Turn the original image into a grayscale image plotting each individual
% layer using the uint8 variable class
gray(:,:,1) = uint8(0.2989 .* pic(:,:,1) + 0.5870 .* pic(:,:,2) + 0.1140 .* pic(:,:,3));
gray(:,:,2) = gray(:,:,1);
gray(:,:,3) = gray(:,:,1);

% Plot the gray scale image
subplot(2,2,2)
imshow(gray);
title('256 Level Grayscale Image')

% Turn the grayscale image into a another grayscale image but with a
% grayscale factor wanted by the user. Uses linspace to determine the
% scaling factor between the range 0 and 255
newlevel = 256 / n;

graylevel = floor(gray / newlevel);

i = linspace(0,255,n);
t = i(2) - i(1);

graylevelimage = uint8(graylevel .* t);

% Plot the second grayscale image
subplot(2,2,3)
imshow(graylevelimage);
title([num2str(n) ' Level Grayscale Image'])
