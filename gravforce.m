 function [f] = gravforce(x1,x2,G)
 % Computes the gravitational force between 2 particles
 % of vector position x1, and another one at x2
 % G : gravitational constant including masses = G*M*m
 x = x1 - x2;
 distance = sqrt( sum(x.^2) );
 f = -G * x / (distance^3);