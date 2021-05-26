pkg load statistics 

n = 1000; % numarul de simulari

u1 = rand(1, n);
u2 = rand(1, n);

nr = 0;

for i = 1 : n
  x(i) = sqrt((-2) * (log(u1(i))) * cos(2 * pi * u2(i)); 
  y(i) = sqrt((-2) * (log(u1(i))) * cos(2 * pi * u2(i)); 

  dist = sqrt((-x(i)).^2 + (-y(i)).^2);
  
  if dist <= 0.5
    nr++;
  endif
  
 endfor

fr = nr/n
ft = 1 - exp(-1/8)