Ac=@(x)(2.1426*10^-4 - x(1)*x(2));
P=@(x)(0.008*pi +2*x(3));

func=@(x)((sqrt(133.4*(2.1426*10^-4 - x(1)*x(2))*(0.008*pi +2*x(3)))*30)*tanh(((114.5*(0.008*pi +2*x(3)))/(1.165*(2.1426*10^-4 - x(1)*x(2))))*0.08))/(4001.775*(2.1426*10^-4 - x(1)*x(2)));
Xinit=[0.01 0.01 0.01];
ineq=@g;
eq=@h;
s=1;
w=1;
UB=[0.026 0.018 0.02];
LB=[0.008 0.008 0.008];
tolg=10^-2;
tolh=10^-2;
tolCycl=10^-2;
tolG=10^-3;
[xsolution,isolution] = PENALTY(func,Xinit,ineq,eq,s,w,UB,LB,tolg,tolh,tolCycl,tolG);