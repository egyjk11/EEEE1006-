% Jonathon Kluth egyjk11@nottingham.ac.uk
clearvars, clc
%{
a=20;
b=50;
n=1;
r = a + (b-a).*rand(1,1)
weight = r; % Weight in g
if (weight >= 40) % Check if weight is greater than 40g
    disp('Fat Fuck'); % If it is, print warning message
elseif weight (weight <= 30) %Check if weight is less than 40g
    disp('Skinny Queen, too low biyatch') % If it is, print warning message
else %If no condition is met
    disp('Just right goldilocks type shii') 
end 
%}


