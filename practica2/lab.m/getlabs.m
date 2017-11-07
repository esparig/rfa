function labs=getlabs(data)
  labs=[]; [N,L]=size(data);
  for n=1:N
    if (isempty(find(labs==data(n,L)))) labs=[labs data(n,L)]; end; end
  labs=sort(labs);
endfunction
