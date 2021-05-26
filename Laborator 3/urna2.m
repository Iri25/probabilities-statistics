r = 5;
a = 3;
v = 2;

extragere = 3;
nr_simualari_a = 0;
nr_simualari_b = 0;

arr = [zeros(1, r), zeros(1, a) + 1, zeros(1, v) + 2];

for i = 1: 5000
  rands = randsample(arr, extragere);
  esp = 0;
  esp_b = 0;
  
  for j = 1 : extragere
    
    if rands(j) == 0
      exp = 1;
      break;
    endif
    
   if rands(j) != rands(i)
     exp_b = 1;
   endif
   
  endfor
  
  if exp == 1
    nr_simualari_a = nr_simualari_a + 1;
   endif
   
   if exp_b == 0 && exp == 1
    nr_simualari_b = nr_simualari_b + 1;
   endif
   
endfor
  
  A = nr_simualari_a / 5000
  B = nr_simualari_b / 5000
   


