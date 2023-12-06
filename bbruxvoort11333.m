function [ispythag] = bbruxvoort11333(a,b,c)
%
% Determine if the entered values create a pythagorean triple.
%
% Purpose:
%   The program asks the user to input values a pythagorean triple, and
%   returns a value of true or false, depending on if it can be completed.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/1/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% a             -- Inputs a value of a side of a right triangle that is not
%                  the hypotenuse.
% b             -- Inputs a value of the other side of a right triangle that
%                  is not the hypotenuse.
% c             -- Inputs the value of hypotenuse.
% ispythag      -- Pythagorean theorem equation that specifically
%                  determines if the values enetered are a pythagroean triple.
%
% Typical use: bbruxvoort11333(3,4,5)
%

% Pythagorean theorem equation that specifically determines if the values enetered are a pythagroean triple.
ispythag = a.^2 + b.^2 == c.^2



