 N = 500;

 puncte = [];
 rectangle('Position', [0 0 1 1])

 Xpoints = [];
 Ypoints = [];

 for i=1:N
 generated_points = rand(1, 2);
 Xpoints = [Xpoints, generated_points(1)];
 Ypoints = [Ypoints, generated_points(2)];
 puncte = [puncte ; generated_points];
 endfor

 plot(Xpoints, Ypoints, '*r', 'MarkerSize', 5)

 int_cerc = 0;
 centru_cerc=[0.5, 0.5];
 raza_cerc = 0.5;

 for i=1:N
 current_point = puncte(i, :);
 if pdist([current_point ; centru_cerc]) < raza_cerc
 int_cerc = int_cerc + 1;
 endif
 endfor

P_INTERIOR_CERC = int_cerc / N

varfuri = [0, 0; 0, 1; 1, 1; 1, 0; 0, 0];

apr = 0;

 for i=1:N

 current_point = puncte(i, :);

 minim = pdist([varfuri(1, :); current_point]);

 for j=2:length(varfuri)

 minim = min(minim, pdist([varfuri(j, :); current_point]));

 endfor

 if minim > pdist([current_point; centru_cerc])

 apr++;

 endif

 endfor

 P_MAI_APROPIATE_CENTRU = apr / N





 pct_tri = 0;

 for i=1:N

 current_point = puncte(i, :);

 nr_obtuze = 0;

 for j=1:length(varfuri)

 for k=j:length(varfuri)

 if pdist([current_point; varfuri(j, :)]) ** 2 + pdist([current_point; varfuri(k, :)]) ** 2 < 1

 nr_obtuze++;

 endif

 endfor

 endfor

 if nr_obtuze == 2;

 pct_tri++;

 endif

 endfor

 P_TRIUNGHIURI_OBTUZE = pct_tri / N

