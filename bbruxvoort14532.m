function bbruxvoort14532(n)

% Display the inputed number based on the function chosen by the user.
%
% Purpose:
%   The program displays a menu for the user to select between different
%   functions, and then whatever function is chosen the program uses the
%   number inputed by the user and does whatever the function is supposed
%   to do.
%
% Record of Revisions:
%       Date:           Programmer:         Description of Change:
%       =====           ===========         ======================
%       3/22/22         Brian Bruxvoort     Original Code
%
% Define Variables:
%   
% roundMenu     -- Displays a menu with options for the user to pick, then
%                  stores the number from that choice.
% ceiling1      -- Uses the ceil function for the inputed number.
% round1        -- Uses the round function for the inputed number.
% sign1         -- Uses the sign function for the inputed number.
%
% Typical use: bbruxvoort14532(9.43)
%

% Sets a base number for roundMenu
roundMenu = 0;

% Creates a menu for the user to choose a function
roundMenu = menu('Choose a function: ', 'ceil', 'round', 'sign');

% Retrieves the number from the menu, the number input from the user, and
% displays the number for whichever choice the user selected in the menu
switch roundMenu
    case{1}
        ceiling1 = ceil(n);
        disp(['Rounded number using ceiling: ' num2str(ceiling1)]);
    case{2}
        round1 = round(n);
        disp(['Rounded number using round: ' num2str(round1)]);
    case{3}
        sign1 = sign(n);
        disp(['The sign of the number is: ' num2str(sign1)]);
    otherwise
        disp('Invalid input number ');
end   
