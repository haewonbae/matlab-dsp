clc;
clear all;
close all;

% Parameters for fs1 = 1320 Hz
fs1 = 1320; % Sampling frequency
t1 = 0:1/fs1:2/80; % Time vector
x1 = cos(80*pi*t1 + 0.25*pi);
y1 = sin(2560*pi*t1);
z1 = x1 .* y1 + 15;

% Plot time domain signal for fs1
figure;
subplot(2, 1, 1);
plot(t1, z1);
title('Time Domain Signal X(t) for 1320 Hz');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency analysis for fs1
n1 = length(z1); % Number of samples
f1 = (-n1/2:n1/2-1)*(fs1/n1); % Frequency range

Z1 = fft(z1); % Compute the FFT
Z1_shifted = fftshift(Z1); % Shift zero frequency component to center of spectrum

% Plot frequency spectrum for fs1
subplot(2, 1, 2);
plot(f1, abs(Z1_shifted)/n1);
title('Frequency Spectrum of X(t) for 1320 Hz');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

% Parameters for fs2 = 1240 Hz
fs2 = 1240; % Sampling frequency
t2 = 0:1/fs2:2/80; % Time vector
x2 = cos(80*pi*t2 + 0.25*pi);
y2 = sin(2560*pi*t2);
z2 = x2 .* y2 + 15;

% Plot time domain signal for fs2
figure;
subplot(2, 1, 1);
plot(t2, z2);
title('Time Domain Signal X(t) for 1240 Hz');
xlabel('Time (s)');
ylabel('Amplitude');

% Frequency analysis for fs2
n2 = length(z2); % Number of samples
f2 = (-n2/2:n2/2-1)*(fs2/n2); % Frequency range

Z2 = fft(z2); % Compute the FFT
Z2_shifted = fftshift(Z2); % Shift zero frequency component to center of spectrum

% Plot frequency spectrum for fs2
subplot(2, 1, 2);
plot(f2, abs(Z2_shifted)/n2);
title('Frequency Spectrum of X(t) for 1240 Hz');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
