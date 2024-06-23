clc; 
clear all; 
close all;

% 參數設置
T = 16e-3; % 週期為16毫秒
f0 = 1 / T; % 基頻
t = 0:1e-6:4*T; % 時間向量，從0到一個週期，以1微秒為步長

% 複數指數信號
Z = 4 * exp(1i * (125 * pi * t + pi / 4));

% 畫出時間域信號的實部和虛部
figure;
plot(t, real(Z), 'b', t, imag(Z), 'r');
title('Time Domain Signal Z(t)');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Real Part', 'Imaginary Part');
