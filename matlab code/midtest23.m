clc;
clear all;
close all;

% 差分方程係數
b = [1, 2, 1]; % 輸出係數
a = [1];       % 輸入係數，假設為1

% 取樣頻率
fs = 800; % 取樣頻率 800 Hz
T = 1/fs; % 取樣時間間隔

% 時間向量
t = 0:T:0.05; % 取樣時間 0 到 0.05 秒

% 輸入信號 x[n]
x = 4 + 3 * cos(200 * pi * t - pi/6) - sin(1600 * pi * t);

% 計算輸出信號 y[n]
y = filter(b, a, x);

% 畫出輸出信號的實部和虛部
figure;
stem(t, real(y), 'filled', 'r'); % 使用紅色畫實部
hold on;
stem(t, imag(y), 'filled', 'b'); % 使用藍色畫虛部
title('Output Signal y[n] - Real and Imaginary Parts');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Real Part', 'Imaginary Part');
grid on;
hold off;
