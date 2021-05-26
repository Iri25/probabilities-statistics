r = 5;
a = 3;
v = 2;

extragere = 3;

arr = [zeros(1, r), zeros(1, a) + 1, zeros(1, v) + 2];

for i = 1: 5000
  rands = randsample(arr, extragere);
  esp = 0;
  for j = 1 : extragere
    if rands(j) == 0
      exp = 1;
      break;
    endif
   endfor
   if exp == 1
     nr_simualari = nr_simulari + 1;
   endif
endfor

nr_simulari / 5000
