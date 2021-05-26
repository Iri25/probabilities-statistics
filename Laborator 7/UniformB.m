pkg load statistics;

% folosim distributia normala N(m, sigma^2)

n = 500; % numarul de selectii
m = unifrnd(150, 170); % interval distribuit uniform
x = normrnd(m, t, 1, n);
a = 0.05; % probabilitate de risc (alfa) pentru 95% nivel de incredere
sigma  = 10; % abaterea standard
x_n = mean(x); % media teoretica

% i
z1 = (x_n - 160) / (sigma / sqrt(n));
if abs(z1) < norminv(1 - a /2, 0, 1)
  printf("Inaltimea medie este 160 cm\n");
endif
[a1, ~, a2] = ztest(x, 160, sigma, 'tail', 'both', 'alpha', a)

% ii
z2 = (x_n - 155) / (sigma / sqrt(n));
if z2 > norminv(a, 0, 1)
  printf("Inaltimea medie este cel putin egala cu 155 cm\n");
else
  printf("Inaltimea medie nu este cel putin egala cu 155 cm\n");
endif
[b1, ~, b2] = ztest(x, 155, sigma, 'tail', 'both', 'alpha', b)

% iii
z3 = (x_n - 165) / (sigma / sqrt(n));
if z2 > norminv(a, 0, 1)
  printf("Inaltimea medie este cel putin egala cu 165 cm\n");
else
  printf("Inaltimea medie nu este cel putin egala cu 165 cm\n");
endif
[c1, ~, c2] = ztest(x, 165, sigma, 'tail', 'both', 'alpha', c)
