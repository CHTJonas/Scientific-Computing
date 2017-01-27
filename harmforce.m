function [f] = harmforce(x1,x2,k)
 % Computes the harmonic force between 2 particles
 % of vector position x1, and another one at x2
 % k : spring constant, F = -kx
 f = -k * (x1 - x2);