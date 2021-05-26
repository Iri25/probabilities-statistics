
pkg load statistics;
n = 500; % numarul de simulari

m = 165; %cm
o = 10; % cm
x = [];
for i=1:n
  d = normrnd(m, o);
  x = [x d]; 
endfor
h = hist(x, 10);
bar(10, h, 'hist', 'FaceColor', 'm');

