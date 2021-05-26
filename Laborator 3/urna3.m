function out = simuleaza(r, a, v)



extragere = 3;

 nr_simulari_a = 0;

 nr_simulari_b = 0;



arr = [zeros(1, r), zeros( 1, a)+1, zeros(1, 2) +2];



for i = 1 : 500

 rands = randsample(arr, extragere);

 exp = 0;

 exp_b = 0;

 for j = 1 : extragere

 if rands(j) == 0

 exp = 1;

 endif

 if rands(j) != rands(1)

 exp_b = 1;

 endif

 endfor

 if exp == 1

 nr_simulari_a = nr_simulari_a + 1;

 endif

 if exp_b == 0 && exp == 1

 nr_simulari_b = nr_simulari_b + 1;

 endif

 endfor



PA = nr_simulari_a / 5000;

 PAB = nr_simulari_b / 5000;



out = PAB / PA;

 end