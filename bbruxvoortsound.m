 % Script File: bbruxvoortsound.m
%
% Purpose:
%   The program reads the given audio files, then combines them into one
%   audio file, and plays it.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       4/27/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%  
% A         -- Stores the amplitude of the first wav file
% A2        -- Stores the amplitude of the second wav file
% A3        -- Stores the amplitude of the third wav file
% A4        -- Stores the amplitude of the fourth wav file
% A5        -- Stores the amplitude of the fifth wav file
% fs        -- Sets the frequency equal to 16000 for all the files
% combined  -- Combines all the amplitudes of the five files into one
%

clear
clc

% Reads all the audio files and stores their variables
[A, fs] = audioread('bobby.wav');

[A2, fs] = audioread('myswamp.wav');

[A3, fs] = audioread('clean.wav');

[A4, fs] = audioread('aquascum.wav');

[A5, fs] = audioread('needhug.wav');

% Combines all the audio amplitudes together
combined = [A; A2; A3; A4; A5];

% Sets the frequency equal to 16000 for all the files
fs = 16000;

% Plays the combined sounds
sound(combined, fs)
