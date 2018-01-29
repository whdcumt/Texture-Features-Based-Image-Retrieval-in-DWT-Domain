function [ A ] = quantizationimage( x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[height, width] = size(x);

B = 256;
Q = zeros(256, 1);
% Quantized to 64 levels
L = 16;
q= B/L;
for i = 0:255
Q(i+1, 1) = floor(i / q)*q + q /2;
end
y = zeros(size(x));

for i = 1:height
for j = 1:width
y(i, j) = Q(x(i,j) + 1);
end
end
y=uint8(y);
A=y;
end

