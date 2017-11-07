#!/usr/bin/octave -qf
if (nargin<1) printf("%s <training>\n",program_name()); exit; end

arg_list=argv();
Tr=arg_list{1};
load(sprintf(Tr));
tr=data;
[NTr,L]=size(tr);
labs=unique(data(:,L));
C=numel(labs);  

C
