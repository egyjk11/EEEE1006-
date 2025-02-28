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
Current = 0.1*sin(z); % Multiplied by 0.1 to give the limits of the function
% plot(z, Current);

Current = Current.^2 % Squaring current first to find RMS 

rms = sqrt(mean(Current)); % Calculating RMS 
R = 1000;

Power = rms*R;

% Avg power dissipated = 70.6 W

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

speedstr = sprintf('The speed of light is %f m/s', c);
disp(speedstr);

%Question bii) 

lambda_range = [28e-6, 0.6e-6];

frequency_range = c./lambda_range;

fprintf('Frequency range: %.2e Hz to %.2e Hz\n', frequency_range(1), frequency_range(2));






%% Q4 - EXAMPLES [12 MARKS]
clear

% Question a)
%The clear command clears text from the command window and workspace. For
%example, computing the variable 'x=1.5' then proceeding the line with the
%function 'clear' would remove it from the workspace/command window.

x = 1.5;
clearvars, clc
x = 2.5;

%Question b) The who command lists the current variables within the
%workspace. 

b = 1:4;
c = (2:7)';
who

%The 'whos' command lists the current variables and their respective sizes
%and types
whos

%Question c The semicolon command suppresses the output of any command,
%stopping from printing to screen. 

t = 1.5


%Question d) The sound function converts of signal data into sound that is
%played through the speaker of the computer, outputting at a frequency of
%8192hz

y=sin(x)
sound(y)

% Roots returns the roots of a polynomial 
z = [4, 7, 3]
p = roots(z)

% abs returns the absolute value of each element in an input 

u = [3.44, -6.79, -9.2, -2]'
y=abs(u)

%% Q5 - PROGRAM FLOW [12 MARKS]
clear

%Question b) 

h = 4000; %Initial height in metres
t = 0; % Time in seconds
parachuteDeployed = false;
transponderActive = false; 

while h > 0
    t = t + 2; % Time progress in 2-second steps 
    h = h - 200; % Height decreases 


    % Deploy parachute at 2700m 
    if h <= 2700 && ~parachuteDeployed 
        fprintf('Parachute deployed at t=%d seconds, height=%d metres \n', t, h);
        parachuteDeployed = true;
    end


% Activate transponder at 0m 
if h <= 0 && ~transponderActive
    fprintf('\nTransponder Active at t=%d seconds, height=%d metres', t, h);
    transponderActive = true;
end
end 


% Question c) 


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





%% Q6 FORMAT AND PRINT TEXT TO SCREEN AND LOOPS [13 MARKS]
clear

city = 'Nottingham'; % City where data has been collected
time = [1300 1600 1900]; %Times in 24hr format
Temperature = [19 20 18]; % Temperature in °C
Humidity = [55 49 59]; % Air Humidity in %
UV_level = [4 2 1]; % UV level in factor

speedstr1 = sprintf('Data Logging intitated - 27/7/2023 \nLocation - %s \n', city); %Print Header
disp(speedstr1)

for x=1:length(time) %Loop for each entry of data in the array
speedstr2 = sprintf('\nTime = %d \nTemperature = %d°C \nHumidity = %d%% \nUV_level = %d \n', time(x), Temperature(x), Humidity(x), UV_level(x));
disp(speedstr2)
end

speedstr3 = sprintf('Data logging terminated');
disp(speedstr3)
%Print footer
 

% The script has specific values within the arrays, rather than collecting
% or receiving this data in real time. The values are hardcoded into the
% script. 



%% Q7 - FOR LOOPS AND DISPLAYING DATA [16 MARKS]

% Question a)

% Fibonacci sequence - First 50 terms
n = 50; % Number of terms
fib_seq = zeros(n, 1); % Preallocate array for efficiency


% Initial values
fib_seq(1) = 0; % First term in the Fibonacci sequence 
fib_seq(2) = 1; % Second Term in the Fibonacci sequence

% Compute Fibonacci sequence using a loop
for  n = 3:n % Exclude first two terms 
    fib_seq(n) = fib_seq(n-1) + fib_seq(n-2); % Formula for the sequence 
    fprintf('\n For n = %d \n Fibonacci number = %.4f', n, fib_seq(n)) % Print command to display sequence
end

% Question b and Question c)

% Fibonacci sequence - First 50 terms
n = 50; % Number of terms
fib_seq = zeros(n, 1); % Preallocate array for efficiency
golden_ratio = zeros(n,1);

% Initial values
fib_seq(1) = 0; % First term in the Fibonacci sequence 
fib_seq(2) = 1; % Second Term in the Fibonacci sequence

% Compute Fibonacci sequence using a loop
for  n = 3:n % Exclude first two terms 
    fib_seq(n) = fib_seq(n-1) + fib_seq(n-2); % Formula for the sequence 
    fprintf('\n For n = %d \n Fibonacci number = %.4f', n, fib_seq(n)) % Print command to display sequence
    golden_ratio(n) = fib_seq(n)/fib_seq(n-1);
    fprintf('\n Golden Ratio Number = %.4f', golden_ratio(n))
end

% Question d)

% Fibonacci sequence - First 50 terms
n = 50; % Number of terms
fib_seq = zeros(n, 1); % Preallocate array for efficiency
golden_ratio = zeros(n,1);

% Initial values
fib_seq(1) = 0; % First term in the Fibonacci sequence 
fib_seq(2) = 1; % Second Term in the Fibonacci sequence

% Compute Fibonacci sequence using a loop

fprintf('Fibonacci Sequence and Approximations for Golden Ratio\n')

for  n = 3:n % Exclude first two terms 
    fib_seq(n) = fib_seq(n-1) + fib_seq(n-2); % Formula for the sequence
    golden_ratio(n) = fib_seq(n)/fib_seq(n-1);
    if ((golden_ratio(n) - golden_ratio(n-1))/golden_ratio(n-1) > 0.001 )
     fprintf('\n For n = %d  F = %d', n, fib_seq(n)) % Print command to display sequence
     fprintf(' phi = %.5f', golden_ratio(n))
    end
end
 fprintf(' \nGolden Ratio converged to within 0.1%%')
 
% The advantage of the approach taken in part d is that the output of the
% function is only printed until a desired value is achieved, rather than
% (in question c) where the entire array is printed. 




%% Q8 - USING THE SWITCH STATEMENT [10 MARKS]
clear

msg = "What Currency would you like to convert to?"; % Dialog box displayed when opening menu 

Currencies = menu(msg, 'Euro', 'US Dollars', 'Chinese Yuan', 'Swiss Francs')'; % Selection of inputs for the various currencies 

GBP = input('How much money would you like to exchange? £'); % Function for the input amount 

if GBP > 0 % If statement to prevent negative conversions 
switch Currencies 
    case 1 
        Euro = GBP*1.17; % Pounds to Euro conversion 
        fprintf('You have exchanged £%.2f for €%.2f Euros', GBP, Euro)
    case 2 
        USDollars = GBP*1.27; % Pounds to Dollar conversion 
        fprintf('You have exchanged £%.2f for $%.2f', GBP, USDollars)
    case 3 
        ChineseYuan = GBP*9.03; % Pounds to Yen conversion 
        fprintf('You have exchanged £%.2f for ¥%.2f', GBP, ChineseYuan)
    case 4
        SwissFrancs = GBP*1.09; % Pounds to Francs conversion
        fprintf('You have exchanged £%.2f for CHF %.2f', GBP, SwissFrancs)
    otherwise
        fprintf('You have exited the dialog window') %Msg to show if no money to be converted
end 
else 
    fprintf('Error: You cannot convert without money'); %Msg to show if <0 £ is trying to be converted
end 
    








%% PRESENTATION AND FORMATTING [11 MARKS]

% You do not need to put anything in this section
% Marks will be given for neat, tidy presentation, commenting
% and remembering to put your name and email address at the top of the
% script