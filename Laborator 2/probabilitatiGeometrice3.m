n = 500;

ct = 0;

rectable('Position', [0 0 1 1], 'FaceColor', 'w')
hold on;

A = [1, 0];
B = [0, 1];
C = [0, 0];
D = [1, 1];

Cerc = [0.5, 0.5];

for i = 1:n
  x = rand;
  y = rand;
  M = [x, y];
  
  D1 = pdist([M;A]);
  D2 = pdist([M;B]);
  D3 = pdist([M;C]);
  D4 = pdist([M;D]);
  
  nr = 0;
  
  if D1 * D1 + D2 * D2 < 1
    nr++;
 endif
 
  if D1 * D1 + D4 * D4 < 1
    nr++;
 endif
 
  if D3 * D3 + D2 * D2 < 1
    nr++;
 endif
 
  if D3 * D3 + D4 * D4 < 1
    nr++;
 endif
 
 if nr == 2
   ct++;
   plot(x, y, '*', 'MarkerSize', 5);
 endif
endfor

fr2 = ct/n
