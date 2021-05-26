pkg load statistics;

N = 10000; % numarul de simulari

gr = 0% grupa sanguina 
array = []; % vectorul grupei sanguine (O - 0, A - 1, B - 2, AB - 3)

% probabilitatea grupei sanguine
pO = 0.46;
pA = 0.40;
pB = 0.10;
pAB = 0.04;


% probabilitatea numarul de aparitii favorabil
rO = 0;
rA = 0;
rB = 0;
rAB = 0;

for i = 1:N
  p = rand();
  
  if(p <= pO)
    rO = rO + 1;
    gr = 0;
    
  elseif(p < pO + pA)
    rA = rA + 1;
    gr = 1;
  
  elseif(p <= pO + pA + pB)
    rB = rB + 1;
    gr = 2;
  
  else
    rAB = rAB + 1;
    gr = 3;
  
endif

  array = [array, gr];
  
endfor

% frecventa relativa
frO = rO/N
frA = rA/N
frB = rB/N
frAB = rAB/N


% afisare histograma
h = histc(array, 0:3);
bar(0:3, h, 'hist', 'FaceColor', 'm');