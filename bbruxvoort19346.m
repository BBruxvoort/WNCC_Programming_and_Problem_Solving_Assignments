% Script File: bbruxvoort19346.m
%
% Purpose:
%   The program runs a game where the user trys to guess a randomly
%   generated number between 1 and 100. The game shows how many trys it
%   took to guess the number, and then asks if the user wants to play
%   again.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/28/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% m1            -- Sets the base for the loop at 1
% n             -- Max number in th range is set at 100
% b             -- Creates the vector from the random number between 1 and 100
% index         -- Finds the length of the vector 
% r             -- Sets the exact number that needs to be guessed
% m2            -- Creates a second base for a loop starting at 1
% count         -- Sets the number of trys the person takes to guess the
%                  number to 0 and keeps adding one for every guess
% guess         -- Stores the user's guess and determines if it is equal to
%                  r
% average_guess -- Averages the number of total guesses after the user is
%                  done playing
%
%

clear
clc

% There is a lot going on here but the program will select a random number
% between 1 and 100 here, and set a base for the while loop.
fprintf('\n Welcome to Guess the Number Game')
disp(' ')
m1 = 1;
while m1 == 1
    disp(' ');
    n = 100;
    b = randperm(n);
    index = randperm(length(b));
    r = b(index(1));
    
% Here another while loop is created where this determines if the user's
% guess is the right number, if it isn't then it keeps asking for a guess.
    m2 = 1;
    count = 0;
    while m2 == 1
        
    guess = input('Input your guess: ');

        if (guess == r)
            disp(' ')
            fprintf('Correct! My secret number was: %i\n',r)
            m2 = 2;
        elseif (guess > n)
            disp(' ')
            disp('Too high, please less than %i\n',n)
            disp(' ')
        elseif (guess < 1)
            disp(' ')
            disp('Too low, please more than %i\n',n)
            disp(' ')
        elseif (guess > r)
            disp('Lower')
        else (guess < r);
            disp('Higher')
        end
        count = count+1;
    end
    
    % This section displays the number of guesses it took the player to
    % guess the number. Then gives them a message of how well they did.
    disp(' ')
    fprintf('Guesses needed to find my secret number: %i\n',count)
    disp(' ')
    if (count == 1)
        disp('Perfect!')
    elseif (count >= 2 && count < 0.5*n)
        disp('Excellent')
    elseif (count == 0.5*n)
        disp('Average')
    elseif (count > 0.5*n && count <= 0.8*n)
        disp('Very Poor')
    else (count > 0.8*n);
        disp('Better luck next time')
    end
    
    % This section asks the user if they want to play again and if they
    % choose no, then it displays the average amount of guesses they took.
    disp(' ')
    again = input('Do you wish to play again? (y/n): ','s');
    if again == 'y'
        m1 = 1;
    elseif again == 'n'
        m1 = 2;
    else 
        disp('Not a valid input. ')
    end 

end
% After the user decides they don't want to play anymore, the program will
% display the average amount of guesses it took them for each game played.
    disp(' ')
    fprintf('\n Thank you for playing.\n')
    average_guess = mean(count);
    disp(['Average amount of guesses: ' num2str(average_guess)])