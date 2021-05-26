pkg load statistics

n = 5000; % numarul de simulari

pMoneda1 = 0.5; % probabilitatea prima moneda stema
pMoneda2 = 0.3; % probabilitatea a doua moned stema

nr = 0; % numarul de aruncari pana la aparitia a doua moneda stema
nrStop = 0; % numarul de aruncari la aparitia a doua moneda stema

ok1 = 0; % prima moneda nu este stema 
ok2 = 0; % a doua moneda nu este stema

for i = 1 : n
  
  p1 = rand(1, n); % probabilitate prima moneda
  if (p1 == pMoneda1)
    ok1 = 1;
  else 
    ok1 = 0;
  endif
  
  p2 = rand(1, n); % probabilitate a doua moneda
  if (p2 == pMoneda2)
    ok2 = 1;
  else 
    ok2 = 0;
  endif
  
  if (ok1 == 1 && ok2 == 0)
    nr++;
  endif
  if (ok1 == 1 && ok2 == 1)
    nrStop = nr;
  endif
 
endfor

E = mean(nrStop) % valoarea medie de succes
