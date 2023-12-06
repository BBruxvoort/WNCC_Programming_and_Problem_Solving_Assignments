func=input('enter the equation for the curve for which you want to approximate ','s');
xmin=input('enter minimum value of x wanted for the equation ');
xmax=input('enter maximum value of x wanted for the equation, must be greater than the minimum value of x ');
xrange=input('enter the number of data points wanted to approximate the length of the curve ');

[L]= bbruxvoortplotrev2function(func, xmin, xmax, xrange);