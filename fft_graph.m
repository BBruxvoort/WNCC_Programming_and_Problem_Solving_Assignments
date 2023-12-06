function fft_graph(A, Fs)
% This function accepts a vector, A, containing audio amplitudes and ...
% frequency Fs and generates a graph of the frequency spectrum
%
% Typical usage:
%   [A, Fs] = audioread('wavefile.wav')
%   fft_graph(A, Fs)

% Use next highest power of 2 greater than or equal to length(A) to calculate fft
nfft = 2^(nextpow2(length(A)));

% Take fft, padding with zeros so that length(fftA) is equal to nfft 
fftA = fft(A, nfft);

% Calculate the number of unique points
NumUniquePts = ceil((nfft+1)/2);

% FFT is symmetric, throw away second half
fftA = fftA(1:NumUniquePts);

% Take the magnitude of fft of A 
mA = abs(fftA);

% Scale the fft so that it is not a function of the length of x 
mA = mA / length(A); 

% Take the square of the magnitude of fft of x which has been scaled. 
% Take the square of the magnitude of fft of x.
mA = mA .^ 2;

% Since we dropped half the FFT, we multiply mA by 2 to keep the same energy. 
% The DC component and Nyquist component, if it exists, are unique and 
% should not be multiplied by 2. 
if rem(nfft, 2) % odd nfft excludes Nyquist point   
   mA(2:end) = mA(2:end)*2; 
else   
   mA(2:end-1) = mA(2:end-1)*2; 
end

% This is an evenly spaced frequency vector with NumUniquePts points.
f = (0:NumUniquePts-1) * Fs / nfft;

% Generate the plot, title and labels. 
figure
plot(f(1:6000),mA(1:6000)); 
title('Power Spectrum'); 
xlabel('Frequency (Hz)'); 
ylabel('Power');