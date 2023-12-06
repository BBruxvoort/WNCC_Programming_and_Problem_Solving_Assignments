
Fs = 48000;

T = 2;

N = Fs * T;

dt = T / N;

t = (1:N) * dt;

f = 500;

A = 0.1 * sin(2 * pi * f * t) + 0.1 * sin(2 * pi * (2 * f) * t)...
    + 0.1 * sin(2 * pi * (4 * f) * t) + 3.7 * randn(size(t));

plot(A(1:6000));

sound(A,Fs)
