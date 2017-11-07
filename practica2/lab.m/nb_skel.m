#!/usr/bin/octave -qf
if (nargin!=2)
  printf("%s <training> <test>\n",program_name()); exit; end
arg_list=argv(); Tr=arg_list{1}; Te=arg_list{2};
load(sprintf(Tr)); tr=data; [NTr,L]=size(tr); D=L-1;
labs=getlabs(data);
C=numel(labs); load(sprintf(Te)); te=data; NTe=rows(te); clear data;
B=10; m=zeros(D,C*B); h=zeros(D,C*B); gc0=zeros(C);
for c=1:C
  trc=tr(find(tr(:,L)==labs(c)),1:D); gc0(c)=(1.0-D)*log(rows(trc));
  for d=1:D 
    [mcd,hcd]=hist(trc(:,d),B);
    m(d,B*(c-1)+[1:B])=mcd; h(d,B*(c-1)+[1:B])=hcd;
  end
end
recolabs=zeros(1,NTe);
for n=1:NTe
  ten=te(n,1:D)'; cmax=1; max=-inf;
  ...
  recolabs(n)=labs(cmax);
end
[Nerr m]=confus(te(:,L),recolabs);
printf("%s %s %d %d %.1f\n",Tr,Te,Nerr,NTe,100.0*Nerr/NTe);
m