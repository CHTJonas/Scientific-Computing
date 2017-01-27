function chisq = slopingsine(b,x,y)
chi = y - (b(1) + b(2)*x + b(3)*sin(2*pi*x+b(4)));
chisq = sum(chi.^2);