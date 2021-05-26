lambda = 1/12;

N = 100;
array = zeros(1, N);

for i = 1 : N
  x = rand();
  %array(i) = exppdf(x, lamda);
  array(i) = (-1)/lamda * log(1 - x);
endfor

array
E = mean(array)% valoamea medie
V = std(array)% deviatia standard