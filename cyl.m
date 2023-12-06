function [area, volume] = cyl(height, radius)
%
%
%
%
%
%

base = pi.*radius.^2;
volume = base.*height;
area = 2.*pi.*radius.*height + 2.*base;
