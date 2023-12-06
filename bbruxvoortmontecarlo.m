% Script File: bbruxvoortmontecarlo.m
%
% Purpose:
%   The program asks the user for an amount of walkers and where to start
%   the walker's position. Then based on that the program will run a bunch
%   of simulations where the walker's movement will be randomized, and when
%   ever it hits a determined surface it will add that surfaces temperature
%   to the total. Then it will determine the temperature of the initial
%   point and display the graph in real time for the simulation.
%   
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       5/3/22         Brian Bruxvoort     Original Code
%
% Define Variables:
% 
% walkers   -- Has the user enter a large number to determine the number of
%              walkers wanted for the simulation
% x0        -- Has the user input an intitial starting x position
% y0        -- Has the user input an intitial starting y position
% z0        -- Has the user input an intitial starting z position
% samples   -- Has the user input the number of times it has to complete
%              the loop before it stores the total information
% sumT      -- Adds all the temperatures found together
% sumsurf   -- Determines the temperature of the surface the walker hits
% n         -- Sets a start interval for the for loop
% walkend   -- Ends the simulation when it reaches the end of the
%              simulations
% movement  -- Creates a random movement for each of the initial positions
% hit       -- Stops the while loop when it hits a surface
% movex     -- Creates a random number either -1, 0, or 1, and will be the
%              movement applied to the x cordinate 
% movey     -- Creates a random number either -1, 0, or 1, and will be the
%              movement applied to the y cordinate 
% movez     -- Creates a random number either -1, 0, or 1, and will be the
%              movement applied to the z cordinate 
% x1        -- Makes a copy of the initial x and is the new position of x 
%              after the movements
% y1        -- Makes a copy of the initial y and is the new position of y 
%              after the movements
% z1        -- Makes a copy of the initial z and is the new position of z 
%              after the movements
% temp      -- Finds the new average temperature based on the total
%              temperature of the simulations over the number of walkers 
%              used.
%

clear
clc

% Has inputs for the user to enter based on where they want the initial
% walker starting position, the amount of walkers, and the number of
% simulations
walkers = input('Enter amount of walkers wanted for simulation: ');
x0 = input('Enter the original x cordinate: ');
y0 = input('Enter the original y cordinate: ');
z0 = input('Enter the original z cordinate: ');
samples = input('Enter the number of simulations wanted before it plots: ');

% Initializes all the variables before the loops begin
sumT = 0;
sumsurf = 0;
n = 1;
movement = 0;

% Creates a for loop that initializes the walkers starting position and
% adds up the sum of the temperatures
% for m = 1:walkers
    for n = 1:walkers
        x1 = x0;
        y1 = y0;
        z1 = z0;
        hit = 0;
% Creates a while loop that determines the random movement of the walker
        while hit == 0
            movex = randi([-1,1]);
            movey = randi([-1,1]);
            movez = randi([-1,1]);
            x1 = x1 + movex;
            y1 = y1 + movey;
            z1 = z1 + movez;
% Creates an if statement that determines if the walker hits one of the 
% surfaces or not        
            if x1 == 0 || x1 == 18
                sumsurf = 500;
                hit = 1;
                sumT = sumT + sumsurf;
            elseif y1 == 0 || y1 == 12
                sumsurf = 500;
                hit = 1;
                sumT = sumT + sumsurf;
            elseif z1 == 0 || z1 == 18
                sumsurf = 500;
                hit = 1;
                sumT = sumT + sumsurf;
            elseif x1 == 6 && z1 >= 6 && z1 < 18
                sumsurf = 0;
                hit = 1;
                sumT = sumT + sumsurf;
            elseif x1 >= 6 && x1 < 18 && z1 == 6
                sumsurf = 0;
                hit = 1;
                sumT = sumT + sumsurf;
            end 
        end
    end
% Finds the new temp based on the overall temperature and how many walkers
% were used and then plots the graph in realtime
 
temp = sumT / walkers;

% I tried to do the real time drawing of the graph but I couldn't get it
% figured out, so I just left what I had here
% for
%     plot(temp)
%     drawnow
%     title(['Temperature = ' num2str(temp)])
%     nprint = nprint + samples;
% end

disp(['Temperature = ' num2str(temp)])
