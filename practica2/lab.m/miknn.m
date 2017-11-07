#!/usr/bin/octave -qf

if (nargin<2 || nargin>4) printf("%s <training> <test> <[k]> <[metric]>\nmetric:\n\t- euclidean\n\t- manhattan\n\t- mahalanobis\n",program_name()); exit; end


arg_list=argv();
Tr=arg_list{1};
Te=arg_list{2};

if (nargin>2) k=str2num(arg_list{3}); else k=1; end
if (k==2) k=1; end

metric="euclidean";
if (nargin==4) metric=arg_list{4}; end

load(sprintf(Tr));
tr=data;
[NTr,L]=size(tr);
D=L-1;

labs=unique(data(:,L));
C=numel(labs);  

load(sprintf(Te));
te=data;
NTe=rows(te);
clear data;

recolabs=zeros(1,NTe);

for i=1:NTe

  tei=te(i,1:D);

  [dist,idx]=getDistance(tr(:,1:D),tei, metric);

  recolabs(i) = mode(tr(idx(1:k), end));

end

[Nerr m]=confus(te(:,L),recolabs);
printf("%s %s %d %.1f\n",Tr,Te,Nerr,NTe,100.0*Nerr/NTe);
m

