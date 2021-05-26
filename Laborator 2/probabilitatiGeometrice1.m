hold on;

n = 500;

int = 0;
ext = 0;

puncte = transpose(rand(2, n));
cc = [0.5 0.5];

rectable("Position", [0 0 1 1]);
axis square;

for i = 1:n
  if pdist([cc puncte(i,:)]) < 0.5
    int++;
    plot(p(i,1), p(i,2), "*");
  else
    ext++;
  endif
endfor
fr = int/n
