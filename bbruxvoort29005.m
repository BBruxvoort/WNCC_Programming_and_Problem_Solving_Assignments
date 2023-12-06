% Script File: bbruxvoort29005.m
%
% Purpose:
%   The program stores different cell arrays of different names, verbs, and
%   nouns. Then it displays a rendom sentence using those cell array values
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       4/19/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%  
% names    -- Creates an array with three different names
% verbs    -- Creates an array with three different verbs
% nouns    -- Creates an array with three different nouns
% Lname    -- Finds the length of the names array
% Lverb    -- Finds the length of the verbs array
% Lnoun    -- Finds the length of the nouns array
% name     -- Finds a random number and stores the word from the
%             corresponding array postiton for names
% verb     -- Finds a random number and stores the word from the
%             corresponding array postiton for verbs
% noun     -- Finds a random number and stores the word from the
%             corresponding array postiton for nouns
%

clear
clc

% Create three cell arrays with three different names, three different
% verbs, and three different nouns.
names = {'Harry', 'Xavier', 'Sue'};
verbs = {'loves', 'eats', 'throws'};
nouns = {'baseballs', 'rocks', 'sushi'};

% Finds the length of each array
Lname = length(names);
Lverb = length(verbs);
Lnoun = length(nouns);

% Finds a random number from each array
name = names{randi(Lname)};
verb = verbs{randi(Lverb)};
noun = nouns{randi(Lnoun)};

% Displays the corresponding word to the random number
fprintf('%s %s %s\n', name, verb, noun)
