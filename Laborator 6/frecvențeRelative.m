pkg load statistics;
n = 500; % numarul de simulari

m = 165; %cm
o = 10; % cm
x = [];

for i = 1:n
  d = normrnd(m, o);
  x = [x d]; 
endfor

g = (max(x) - min(x)) / 10; % grosime
s = 1 / g; % suma inaltimilor

h = hist(x, 10, s);
bar(10, h, 'hist', 'FaceColor', 'm');
hold on;

