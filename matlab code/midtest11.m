clc;
clear all;
close all;

% 差分方程係數
b = [0, 1, -1]; % 分子係數
a = 1;          % 分母係數

% 定義 n 的範圍
n = 0:20;

% 輸入信號 x[n]
delta = @(n) (n == 0); % 定義單位脈衝函數
x = cos(pi*n/6 - pi/6) + delta(n) + 2*delta(n-1);

% 計算輸出信號 y[n]
y = filter(b, a, x);

% 繪製輸出信號 y[n] 的脈衝響應
figure;
stem(n, y, 'filled', 'r');
title('Impulse Response of y[n] = x[n-1] - x[n-2]');
xlabel('n');
ylabel('y[n]');
grid on;
