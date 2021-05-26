pkg load statistics;

% a < b
% M >= max(g) pe [a, b]
% n puncte uniform distribuite pe [a, b]x[0, M]

function handle = handle(a, b, M, n) % input
  f = @g1; % functia 
  x = unifrnd(a, b, n); % [a, b]
  y = unifrnd(0, M, n); % [0, M]
  hold on;
  
  v = a:0.1:b;
  plot(v, f(v));
  k = 0;
  
  for i = 1:n
    X = x(i);
    Y = y(i);
    
    if Y < f(X)
      plot(X, Y,  "b");
      k++;
    else
      plot(X, Y, "m");
    endif
    
  endfor
  rez = k/n;
  
endfunction
