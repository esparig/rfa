#!/usr/bin/octave -qf
tr = [1 2 3 4 1; 2 3 4 5 2; 3 4 5 6 3]
tei = [2 3 4 5]
[dist,idx]=getDistance(tr(:,1:end-1),tei);
dist
idx
mode(tr(idx(1:1), end))
