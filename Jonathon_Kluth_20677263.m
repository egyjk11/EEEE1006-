% Jonathon Kluth
% egyjk11@nottingham.ac.uk

%% Q1 - VARIABLES [8 MARKS]
clear

x = 1.5;

a = sin(2*x);

b = (sin(x))^2;

c = x^5 + 3*x^4 + x^3 + (x^2)/2 + x;

d = exp(sin(x)*cos(x));

e = (x+1)*(x-1)*(x^2+1)*(x^3);

f = a + 2*b;

g = (f/c+e)^2;


%% Q2 - VECTORS [12 MARKS]
clear

x = linspace(-2*pi, 2*pi, 100);

a = sin(x);

b = (cos(x)).^2;

c = tan(x);

d = (exp(x) - exp(-x))/2;

mean(b); 
std(b);

% The linspace function only specified 100 discrete points from the
% y=cos(x)^2 variable, which may not be completely equal across the given
% range. Improving the number of data points sampled would increase the
% accuracy and bring the value closer to 0.5.

z = linspace(0, 2*pi, 500);
Current = 0.1*sin(z);
% plot(z, Current);
ylim([-0.1 0.1]);

rms = sqrt(mean(z));
R = 1000;

Power = rms*R;

% Avg power dissipated = 1.7725e+03

close all;


%% Q3 - SOLVING EQUATIONS [6 MARKS]
clear
% Question a)
numbers = [24 -24 -480];
roots(numbers);

%Question b)
Epsilon = 8.85418782e-12;
meu = 4*pi*1e-7;


c = sqrt(1/(meu*Epsilon));

%speedstr = sprintf('The speed of light is %f m/s', c);
%disp(speedstr);

%Question bii) 

lambda_range = [28e-6, 0.6e-6];

frequency_range = c./lambda_range;

%fprintf('Frequency range: %.2e Hz to %.2e Hz\n', frequency_range(1), frequency_range(2));






%% Q4 - EXAMPLES [12 MARKS]
clear

% Question a)
%The clear command clears text from the command window and workspace. For
%example, computing the variable 'x=1.5' then proceeding the line with the
%function 'clear' would remove it from the workspace/command window.

x = 1.5;
clear

%Question b) The who command lists the current variables within the
%workspace. 

b = [1:4];
c = [2:7]';
%who;
%The 'whos' command lists the current variables and their respective sizes
%and types
%whos;

%Question c The semicolon command suppresses the output of any command. 
x = 1.5;

%Question 

%% Q5 - PROGRAM FLOW [12 MARKS]
clear

%Question b) 
%{
h = 4000 %Initial height in metres
t = 0 % Time in seconds
parachuteDeployed = false;
transponderActive = false; 

while h > 0
    t = t + 2 % Time progress in 2-second steps 
    h = h - 200 % Height decreases 


    % Deploy parachute at 2700m 
    if h <= 2700 && ~parachuteDeployed 
        fprintf('Parachute deployed at t=%d seconds, height=%d m/n', t, h);
        parachuteDeployed = true;
    end


% Activate transponder at 0m 
if h <= 0 && ~transponderActive
    fprintf('Transponder Active at t=%d seconds, height=%d m/n', t, h);
    transponderActive = true;
end
end 
%}

% Question c) 

%{
 h = 10000; % Initial height in metres
t = 0; % Initial Time 
v = 200; % Initial velocity (Constant)
parachuteDeployed = false;

while h>2700
    t = t + 2;
    h = h - 2*v;

    % Deploy parachute at 2700m 
    if h <= 2700 && ~parachuteDeployed
        fprintf('Parachute deployed at t=%d seconds', t)
        parachuteDeployed = true;
       
    end
end 
%}




%% Q6 FORMAT AND PRINT TEXT TO SCREEN AND LOOPS [13 MARKS]
clear

time = [1300 1600 1900];
Temperature = [19 20 18];
Humidity = [55 49 59];
UV_level = [4 2 1];


datastr = sprintf('Time = %d \nTemperature =%d \nHumidity= %d \nUV_level = %d \n', time(1), Temperature(1), Humidity(1), UV_level(1));
disp(datastr);

datastr = sprintf('Time = %d \nTemperature =%d \nHumidity= %d \nUV_level = %d', time(2), Temperature(2), Humidity(2), UV_level(2));
disp(datastr);



%% Q7 - FOR LOOPS AND DISPLAYING DATA [16 MARKS]
clear


%% Q8 - USING THE SWITCH STATEMENT [10 MARKS]
clear

%% PRESENTATION AND FORMATTING [11 MARKS]

% You do not need to put anything in this section
% Marks will be given for neat, tidy presentation, commenting
% and remembering to put your name and email address at the top of the
% script