clc; 
clear all; 
close all; 

% 參數設置
n = -100:100;
A = 1;
t = -1:0.001:5;

% 計算信號
x_a = A * cos(10 * n.^2);
x_b = cos(pi * t).^2;
x_c = cos(pi^2 * t) .* sin(pi^pi * t);
x_d = cos(pi * t) .* sin(pi * t.^2);
x_e = cos(sqrt(pi * t));
x_f = cos(sqrt(pi) * t);
x_g = cos(sqrt(2) * t) + sin(sqrt(3) * t);

% 繪製所有信號在同一個圖形中
figure;

% (a) x[n] = A*cos(10*n^2)
subplot(4, 2, 1);
stem(n, x_a);
title('(a)x[n] = A \cos(10n^2)');
xlabel('n');
ylabel('Amplitude');

% (b) x(t) = (\cos^2)(\pi t)
subplot(4, 2, 2);
plot(t, x_b);
title('(b)x(t) = \cos^2(\pi t)');
xlabel('t');
ylabel('Amplitude');

% (c) x(t) = \cos(\pi^2 t) \sin(\pi^\pi t)
subplot(4, 2, 3);
plot(t, x_c);
title('(c)x(t) = \cos(\pi^2 t) \sin(\pi^\pi t)');
xlabel('t');
ylabel('Amplitude');

% (d) x(t) = \cos(\pi t) \sin(\pi t^2)
subplot(4, 2, 4);
plot(t, x_d);
title('(d)x(t) = \cos(\pi t) \sin(\pi t^2)');
xlabel('t');
ylabel('Amplitude');

% (e) x(t) = \cos(\sqrt{\pi t})
subplot(4, 2, 5);
plot(t, x_e);
title('(e)x(t) = \cos(\sqrt{\pi t})');
xlabel('t');
ylabel('Amplitude');

% (f) x(t) = \cos((\sqrt{\pi}) t)
subplot(4, 2, 6);
plot(t, x_f);
title('(f)x(t) = \cos((\sqrt{\pi}) t)');
xlabel('t');
ylabel('Amplitude');

% (g) x(t) = \cos(\sqrt{2} t) + \sin(\sqrt{3} t)
subplot(4, 2, 7);
plot(t, x_g);
title('(g)x(t) = \cos(\sqrt{2} t) + \sin(\sqrt{3} t)');
xlabel('t');
ylabel('Amplitude');
