function [f] = dxy(x,y,z)

f =  x .* y .* exp(-sqrt(x.^2 + y.^2 + z.^2));