%
%
%
%
%
% https://www.wavsource.com/snds_2020-10-01_3728627494378403/people/politics/bushw_eavesdropping2.wav

[A, Fs] = audioread('bush.wav');

bush = audioread('bush.wav');

speech = length(A);

seconds = speech/Fs;

speech1 = A(1:round(Fs*0.6));
sound(speech1,Fs)

speech1 = (speech*0:speech*0.5);

speech2 = (speech*5:speech*6);

speech3 = (speech*9.5:speech*10.2);

speech4 = (speech*15:speech*16);

speech5 = (speech*20:speech*20.0961);

% speech1 = bush(speech*0:speech*0.5);
% 
% speech2 = bush(speech*5:speech*6);
% 
% speech3 = bush(speech*9.5:speech*10.2);
% 
% speech4 = bush(speech*15:speech*16);
% 
% speech5 = bush(speech*20:speech*20.0961);

finalspeech = [speech1, speech2, speech3, speech4, speech5];

sound(finalspeech, Fs)
