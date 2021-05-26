function out = genereazaLocuri(m, n)

 v = [2 zeros(1, m) ones(1, n)];

 out = [];

 permuted_v = randperm(length(v));

 for i=1:(n + m + 1)

 out = [out v(permuted_v(i))];

 endfor

 endfunction





 function out = probabilitate(N, m, n)

 cf = 0;

 for i=1:N

 v = genereazaLocuri(m, n);

 for i=2:(m + n)

 if v(i - 1) == 0 && v(i) == 2 && v(i + 1) == 0

 cf = cf + 1;

 break

 endif

 endfor

 endfor

 out = cf / N;

 endfunction

