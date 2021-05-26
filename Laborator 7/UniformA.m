pkg load statistics;

% folosim distributia normala N(m, sigma^2)

n = 500; % numarul de selectii
m = unifrnd(150, 170); % interval distribuit uniform
sigma = unifrnd(5, 20) % interval distribuit uniform
x = normrnd(m, sigma, 1, n);
a = 0.05; % probabilitate de risc (alfa) pentru 95% nivel de incredere

% i
M = N(n, x, a, sigma);

% ii
A = Chi(n, x, a);

% iii
v = [];
for i = 1 : n
  v = [v, (155 < x(i) && 165 > x(i))];
endfor
P = Np(n, x, a, sigma);