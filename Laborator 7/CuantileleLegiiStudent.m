pkg load statistics;

% folosim cuantilele legii Student St(n-1)
% intervale de incredere bilaterale

n = 500; % numarul de selectii
m = randi(n, 1, n); % vector de date statistice (x1, ..., xn)
a = 0.01; % probabilitate de risc (alfa)
sigma = unidrnd(25, 1, n) - 5;

function N = N(n, x, a, sigma) % date input
  m = mean(x); % media teoretica (E(x))
  z = norminv(1 - a/2, 0, 1); % z1-(a/2)
  s = m - (sigma / sqrt(n)) * z; % capataul din stanga al intervalului
  d = m + (sigma / sqrt(n)) * z; % capataul din dreapta al intervalului
  i = [s, d]; % interval bilateral
endfunction

N(n, x, a, sigma)
i