pkg load statistics
clf;
grid on; 
hold on;

Vf=[]; %vectorul pozitiilor finale de la fiecare simulare
k = 10; %numarul de pasi

nod1 = 0;
nod2 = 0;

for j = 1 : k
  deplasare = rand();
  
  % spre dreapta
  if(deplasare >= 0.5)
     nod1 = nod1 + 1;
     Vf=[Vf,nod1];
   endif
  
   % spre stanga
   if(deplasare < 0.5)
     nod2 = nod2 - 1;
     Vf=[Vf,nod2];
   endif
   
endfor

Vf