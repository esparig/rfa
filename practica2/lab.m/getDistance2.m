#!/usr/bin/octave -qf
function [dist, idx] = getDistance2(x1, x2)
    [dist, idx] = sort (sum((x2(ones(size(x1,1),1), :) - x1).^2,2));
end
