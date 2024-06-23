clc;
clear all;
close all;

% 差分方程係數
b = [1, 2, 1]; % 輸出係數
a = [1];       % 輸入係數，假設為1

% 時間向量
n = 0:20;

% 輸入信號 x[n]
x = 2 * cos(pi * n / 4 - pi / 2);

% 計算輸出信號 y[n]
y = filter(b, a, x);

% 畫出輸出信號的實部和虛部
figure;
stem(n, real(y), 'filled', 'r'); % 使用紅色畫實部
hold on;
stem(n, imag(y), 'filled', 'b'); % 使用藍色畫虛部
title('Output Signal y[n] - Real and Imaginary Parts');
xlabel('n');
ylabel('Amplitude');
legend('Real Part', 'Imaginary Part');
grid on;
hold off;
