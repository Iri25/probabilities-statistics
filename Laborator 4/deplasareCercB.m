pkg load statistics
clf;
grid on; 
hold on;

v = [] % vectorul pozitiilor finale de la fiecare simulare
n = 10; % numarul de noduri

pas1 = 0; % pasul cu probabilitatea p
pas2 = n; % pasul cu probabilitatea 1 - p

m = 1; % numarul de simulari
k = 8; % numarul de pasi

for i = 1 : m
  
  for j = 1 : k
    deplasare = rand();
  
    % probabilitate p
    if(pas1 - 1 < n/2 && deplasare >= 0.5)
      pas1 = pas1 + 1;
      p = rand();
      v = [pas1, v];
    endif

  
   % probabilitate 1 - p
    if(pas2 > n/2 && deplasare < 0.5)
      pas2 = pas2 - 1;
      p = 1 - rand();
      v = [pas2, v];
    endif

  endfor

endfor

v
 
N = histc(v, 0 : n);
bar(0 : n, N, 'hist', 'FaceColor', 'm');
