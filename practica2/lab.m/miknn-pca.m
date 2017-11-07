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

#--------------

S=cov(tr(:,1:D)); [eigval eigvec]=eigdec(S);
st=sum(eigval); M=1; s=eigval(M);

while (s<.95*st);
  M=M+1;
  s+=eigval(M);
end


A=eigvec(:,1:M);
trr=tr(:,1:D)*A;
ter=te(:,1:D)*A;

#------------------------------------------------

recolabs=zeros(1,NTe);

for i=1:NTe

  tei=ter(i,1:M)
  [dist,idx]=getDistance2(trr,tei);

  recolabs(i) = mode(tr(idx(1:k), end));

end
recolabs 
[Nerr m]=confus(te(:,L),recolabs);
printf("Training set: %s Test set: %s M: %d Nerr: %d NTe: %d e: %.1f\n",Tr,Te,M,Nerr,NTe,100.0*Nerr/NTe);
m

