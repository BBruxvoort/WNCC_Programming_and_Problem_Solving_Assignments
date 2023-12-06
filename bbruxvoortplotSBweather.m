% Script File: bbruxvoortplotSBweather.m
%
% Purpose:
%   The program generates a graph of the monthly average high and low
%   tempuratures in fahrenheit for Scottsbluff, Nebraska. Temperature
%   values were retrieved from USclimatedata.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       2/17/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
%   month     -- Creates a vector based on the number of each individual
%                month
%   highs     -- Creates a vector with the average high temperature in each
%                month starting with January. Data based on USclimatedata.
%   lows      -- Creates a vector with the average low temperature in each
%                month starting with January. Data based on USclimatedata.
%

clear
clc

% Create variables for the month and then corresponding high and low
% temperatues
month=[1 2 3 4 5 6 7 8 9 10 11 12];
highs=[41 44 53 61 72 82 90 88 78 64 50 40];
lows=[14 16 24 32 43 52 58 56 45 33 22 13];

% Create two plots on the same graph to show the highs and lows of
% temperature
hold on
plot(month,highs, 'r+--')
plot(month,lows, 'bd:')
hold off

% Label the axis and title
xlabel('Month');
ylabel('Temperatue (F)');
title('Scottsbluff High and Low Temperatures in Fahrenheit Based on Month');
