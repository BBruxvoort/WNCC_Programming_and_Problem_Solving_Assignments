


Fs = 48000;

T = 2;

N = Fs * T;

dt = T / N;

t = (1:N) * dt;

f = input('Input time frequency in Hz = ');

while f > 0
    A = sin(2 * pi * f * t);
    sound(A,Fs);
    f = input('Input time frequency in Hz = ');
end
