clc; 
clear all; 
close all; 

% 參數設置
b = [ 1, -1, 2, 0, 1]; % 差分方程式的分子係數
a = 1; % 差分方程式的分母係數（這裡是1，因為分母為1）
n = 0:8; % 繪製0到20的脈衝響應
x = (n == 1) + 2 * (n == 2) + (n == 3); % 信號x[n]
y = filter(b, a, x); % 計算響應y[n]
figure;
stem(n, y,'filled'); % 繪製響應
xlabel('n');
ylabel('y[n]');
title('Response of  y[n]  n=8');
