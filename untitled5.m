clc;
clear all;
close all;

% Time vector
t = 0:0.01:4;

% Unit step function
x = 2*(t >= 0) - (t >= 1) + 2*(t >= 3) - 3*(t >= 4);

% Plot the unit step function
figure;
plot(t, x, 'LineWidth', 2);
title('Unit Step Function Time Domain');
xlabel('Time (s)');
ylabel('u(t)');
grid on;
