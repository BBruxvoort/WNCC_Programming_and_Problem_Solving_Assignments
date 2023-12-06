function [makemat] = bbruxvoort14535(A,B)

% Create two row vectors of equal length with zeros as needed.
%
% Purpose:
%   The program recieves two vectors from the user and then creates a two
%   row vector with equal size. If they are not equal size to begin with
%   the program will add zeros to the end of the shortest vector until it
%   is the same length as the other. 
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/23/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% makemat       -- Variable that creates the vector rows.
% x             -- Stores the vector based on the different input scenarios
%                  of A
% y             -- Stores the vector based on the different input scenarios
%                  of B
% A             -- Input vector A from user
% B             -- Input vector B from user
%
% Typical use: bbruxvoort14535(1:4,2:6)
%

% Creates if and elseif statements to decide if the row vectors are the
% same length and if they aren't adds zeros to the end of it.
if length(A) == length(B)
    x = A;
    y = B;
elseif length(B) > length(A)
    x = zeros(size(B));
    x(1:length(A)) = A;
    y = B;
elseif length(A) > length(B)
    y = zeros(size(A));
    y(1:length(B)) = B;
    x = A;
else 
    disp('Invalid row vector inputs')
end

% Creates the row vectors based on the input of A and B 
makemat(1,:) = x;
makemat(2,:) = y;
