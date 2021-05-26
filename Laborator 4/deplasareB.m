pkg load statistics
clf;
grid on; 
hold on;

 

Vf=[]; %vectorul pozitiilor finale de la fiecare simulare
m = 1000;%numarul de simulari
k = 10; %numarul de pasi

 

for i = 1 : m
  nod = 0;
  for j = 1 : k
    deplasare = rand();
  
    % spre dreapta
   if(deplasare >= 0.5)
      nod = nod + 1;
    endif
  
    % spre stanga
    if(deplasare < 0.5)
      nod = nod - 1;
    endif
   
  endfor
  Vf=[Vf,nod];
endfor

 

N=histc(Vf, -k : k);
bar(-k : k, N, 'hist', 'FaceColor', 'b');