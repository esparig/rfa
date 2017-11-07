#!/usr/bin/octave -qf
function [dist, idx] = getDistance(x1, x2, metric)
    
    %metric%
    aux= x2(ones(size(x1,1),1), :) - x1;

    A=aux;
    B=aux';

	%vector = diag(A*B);
	%vector = sum(A.*B',2);

    [dist, idx] = sort (sum(A.*B',2));
end
