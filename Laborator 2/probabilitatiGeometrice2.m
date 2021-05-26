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
  v = [pdist([M;A]) pdist([M;B]) pdist([M;C]) pdist([M;D])];
  minim = min(v);
  if pdist([M;Cerc]) < minim
    ct++;
    plot(x, y, '*', 'MarkerSize', 5);
 endif
endfor

fr2 = ct/n
