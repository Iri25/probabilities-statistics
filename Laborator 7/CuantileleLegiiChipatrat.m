pkg load statistics;

% folosim cuantilele legii Chi- patrat (n-1)
% intervale de incredere bilaterale

n = 500; % numarul de selectii
x = randi(n, 1, n); % vector de date statistice (x1, ..., xn)
a = 0.01; % probabilitate de risc (alfa)

function Chi = Chi(n, x, a) % date input
  s_n = std(x); % abaterea standard
  c1 = chi2inv(1 - a/2, n - 1); % c 1-(a/2)
  c2 = chi2inv(a/2, n - 1); %c a/2
  s = sqrt((n-1) / c1) * s_n; % capataul din stanga al intervalului
  d = sqrt((n-1) / c2) * s_n; % capataul din dreapta al intervalului
  i = [s, d];% interval bilateral
endfunction

Chi(n, x, a)
i