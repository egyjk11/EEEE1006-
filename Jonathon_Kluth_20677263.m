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
%The clear command clears text from the command window. 

x=1.5; 



%% Q5 - PROGRAM FLOW [12 MARKS]
clear


%% Q6 FORMAT AND PRINT TEXT TO SCREEN AND LOOPS [13 MARKS]
clear



%% Q7 - FOR LOOPS AND DISPLAYING DATA [16 MARKS]
clear




%% Q8 - USING THE SWITCH STATEMENT [10 MARKS]
clear

%% PRESENTATION AND FORMATTING [11 MARKS]

% You do not need to put anything in this section
% Marks will be given for neat, tidy presentation, commenting
% and remembering to put your name and email address at the top of the
% script