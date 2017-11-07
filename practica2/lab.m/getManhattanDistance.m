#!/usr/bin/octave -qf
function [dist, idx] = getManhattanDistance(x1, x2)
    [dist, idx] = sort (sum ( abs( (x1(:,1:end) - x2(ones(size(x1,1),1), :) ) ), 2) );
end
