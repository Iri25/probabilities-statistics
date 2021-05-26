x = [];
m = 10;

for i = 1 : m
  
   count = 0;
   nr = 0;
   
 while nr < 2
   nr = hygernd(49, 6, 6)
   
   if nr < 2
    count = count + 1;
   endif
   
 endwhile
 
 x = [x count];
 
endfor

clf; 
grid on;
hold on;

n = max(x);
N = histc(x, 0:n);
bar(0:n, N/m,'hist','FaceColor','b');
p = 0
for i = 2 : 6
 p = p + hygepdf(2, 49, 6, 6)
endfor

bar(0:n, geopdf(0:n, p),'FaceColor','y');
legend('estimated probabilities','theoretical probabilities');

 
