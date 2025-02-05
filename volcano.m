% Jonathon Kluth egyjk11@nottingham.ac.uk 
clear 
temp = [30 31 31 33 100 32 32 34 30 31 31 100 19 32]
temp4 = temp(4);
temp6 = temp(6);
temp11 = temp(11);
temp13 = temp(13);
average1 = (temp4 + temp6)/2;
average2 = (temp11 +temp13)/2;
correctedTemp = [30 31 31 33 32.5 32 32 34 30 31 31 25 19 32];
Week1Corrected = correctedTemp(1:7);
Week2Corrected = correctedTemp(8:14);
Week1 = temp(1:7);
Week2 = temp(8:14);
average = (Week1 + Week2)/14;
averageCorrected = (Week2Corrected + Week1Corrected)/14;
Week1avg = mean(Week1);
temp(4) = 31


