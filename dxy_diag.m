function [f] = dxy_diag(x)

f =  x .* x .* exp(-sqrt(x.^2 + x.^2 + 0.^2));