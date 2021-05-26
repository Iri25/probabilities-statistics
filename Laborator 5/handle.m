pkg load statistics;
% a < b
% M >= max(g) pe [a, b]
% n puncte uniform distribuite pe [a, b]x[0, M]
function handle(a, b, M, n) % input
  x = unifrnd(a, b, n); % [a, b]
  y = unifrnd(0, M, n); % [0, M]
  
  v = a:0.1:b;
  plot(v, f(v));
  
  for i = 1:n
    X = x(i);
    Y = y(i);
    
    if Y < f(X)
      plot(X, Y,  "b");
    else
      plot(X, Y, "m");
    endif
    
  endfor
  
endfunction
