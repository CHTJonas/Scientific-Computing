function [f] = px(x,y,z)

f =  x .* exp(-sqrt(x.^2 + y.^2 + z.^2));