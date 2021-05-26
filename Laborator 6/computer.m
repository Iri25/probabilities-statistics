pkg load statistics;

N=1000; % numarul de simulari
Timp=zeros(1,N); % perioada de timp in secunde
count1=0;
count2=0;

for i=1:N
  r=rand;
  if r<=0.4
    I=1;
    T=exprnd(5);  % I1 printeaza un poster A2 in T1 secunde
  else
    I=2;
    T=unifrnd(4,6); % I2 printeaza un poster A2 in T2 secunde
  end
  
  Timp(i)=T;
  if T>5
    count1++;
  if I==2
    count2++;
  endif
endif

endfor

% a)
Media=mean(Timp)
Abatere=std(Timp,1)

% b)
Probabilitate_b=count1/N

% c)
Probabilitate_c=count2/count1