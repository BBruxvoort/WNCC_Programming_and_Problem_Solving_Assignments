% Script File: bbruxvoortspeech2.m
%
% Purpose:
%   The program reads the given audio file, and then chooses the bits and
%   pieces of the audio file. Then it turns those bits into a new and
%   somewhaat humourous sound file.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       5/2/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%  
% A            -- Stores the amplitude of the wav file
% Fs           -- Stores the frequency of the wav file
% speech1      -- Stores the amplitude of the wav file between the first
%                 value and 0.6 second values
% speech2      -- Stores the amplitude of the wav file between the 5.62
%                 second and 6.2 second values
% speech3      -- Stores the amplitude of the wav file between the 10
%                 second and 10.5 second values
% speech4      -- Stores the amplitude of the wav file between the 15.2
%                 second and 15.8 second values
% speech5      -- Stores the amplitude of the wav file between the 18.5
%                 second and last second values
% finalspeech  -- Combines all the amplitudes into one variable
%
% https://www.wavsource.com/snds_2020-10-01_3728627494378403/people/politics/bushw_eavesdropping2.wav
%

% Reads the audiofile and stores the amplitude and frequency
[A, Fs] = audioread('bush.wav');

% Stores each value of the amplitude over the range of the clip in seconds
speech1 = A(1:round(Fs*0.6));
speech2 = A(round(Fs*5.62):round(Fs*6.2));
speech3 = A(round(Fs*10):round(Fs*10.5));
speech4 = A(round(Fs*15.2):round(Fs*15.8));
speech5 = A(round(Fs*18.5):end);

% Concatenates all the segiments of the speech into one
finalspeech = [speech1; speech2; speech3; speech4; speech5];

% Plays the new sound
sound(finalspeech, Fs)
