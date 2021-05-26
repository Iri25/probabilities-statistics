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

i = 160; interval
% i = 170;
p = % probabilitatea
gVA = normrnd(i, 10); % generare valori aleatoare
plot(x, gVA);

fctR = normcdf(x, i, 10)); % functia de repartitie
plot(x, fctR);

fctD = normpdf(x, i, 10); % functia de densitate
plot(x, fctD);

E = mean(x); % valoarea medie
V = std(x); % deviatia standard
B = binornd(1, p, 1, n); % proportia