pkg load statistics;

% folosim cuantilele legii Normale N(0,1)
% intervale de incredere bilaterale

n = 100; % numarul de selectii
x = randi(n, 1, n); % vector de date statistice (x1, ..., xn)
a = 0.01; % probabilitate de risc (alfa)

function Np = Np(n, x, a, m) % date input
  m = mean(x); % media teoretica (E(x))
  z = norminv(1 - a/2, 0, 1); % z1-(a/2)
  s = m - sqrt((m * (1 - m)) / n) * z; % capataul din stanga al intervalului
  d = m + sqrt((m * (1 - m)) / n) * z; % capataul din dreapta al intervalului
  i = [s, d];% interval bilateral
endfunction

Np(n, x, a, m)
i