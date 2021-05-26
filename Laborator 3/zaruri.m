pkg load statistics
clf;
grid on;
hold on;

N = 5000;
p = 1/3;
n = 5;

x = binornd(n, p, 1, N);
CF = sum(x == 2);
F = CF/N

% afisare grafic
NR = histc(x, 0:n);
bar (0:n, NR/N, 'histc', 'Facecolor', 'w');
bar (0:n, binopdf(0:n, n, p), 'histc', 'Facecolor', 'y');
