clc;
clear all;
close all;

% 差分方程係數
b = [0, 1, -1]; % 分子係數
a = 1;          % 分母係數

% 定義 n 的範圍
n = 0:20;

% 初始化脈衝響應
h = zeros(size(n));

% 設定脈衝信號
delta = [1, zeros(1, length(n)-1)];

% 計算脈衝響應
for i = 1:length(n)
    if i == 1
        h(i) = b(2) * delta(i);
    elseif i == 2
        h(i) = b(2) * delta(i) - b(3) * delta(i-1);
    else
        h(i) = b(2) * delta(i) - b(3) * delta(i-1);
    end
end

% 繪製脈衝響應 h[n]
figure;
stem(n, h, 'filled', 'b');
title('Impulse Response h[n]');
xlabel('n');
ylabel('h[n]');
grid on;

% 指定Y軸範圍包括負數
ylim([min(h) - 1, max(h) + 1]);

