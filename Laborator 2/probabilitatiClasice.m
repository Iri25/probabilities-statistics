nr = 500

n = 20;
m = 5;

f = zeros(1,m);
b = ones(1, n);

v = [f, b, 2];

fr = 0;
for i = 1 : nr
  v_p = randperm(n+m+1);
  aux = v(v_p);
  poz = find(aux == 2);
  if poz > 1 && poz < n+m+1 && aux(poz-1) == 0
    fr = fr + 1;
  endif
endfor
fr_r = fr/nr
