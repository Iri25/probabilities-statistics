pkg load statistics
    
n = 1000;

arr = [];

for i = 1 : n
  b1 = 0;
  b2 = 0;
  pb2 = 0.6;
  if rand() < 0.8
    b1 = 1;
    pb2 = 0.9;
  endif
  if rand() < pb2
    b2 = 1;
  endif
  b3 = 0;
  pb3 = 0;
  if b1 == 1
    if b2 == 1
      pb3 = 0.6;
    else
      pb3 = 0.9;
     endif
  else
     if b2 == 1
       pb3 = 0.2;
     else
       pb3 = 0.4;
     endif
  endif
  pb4 = 0.5;
  pb5 = 0.8;
  if rand() < pb3
    b3 = 1;
    pb4 = 0.3;
    pb5 = 0.5;
  endif
  b4 = 0;
  if rand() < pb4
    b4 = 1;
  endif
  b5 = 0;
  if rand() < pb5
    b5 = 1;
  endif
  b6 = 0;
  if b4 == 1
    if b5 == 1
      pb6 = 0.5;
    else
      pb6 = 0.8;
     endif
  else
     if b5 == 1
       pb6 = 0.3;
     else
       pb6 = 0.5;
     endif
  endif
  if rand() < pb6
    b6 = 1;
  endif


  nr = b6 * 2**5 + b5 * 2**4 + b4 * 2**3 + b3 * 2**2 + b2 * 2**1 + b1;
  arr = [nr, arr];
endfor;


clf; grid on; hold on;
N=histc(arr, 0 : 64);
bar(0:64, N, 'hist', 'FaceColor', 'b');





