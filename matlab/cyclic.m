function [Xsol, isol]=cyclic(func,Xinit,LB,UB,tolcycl,tolG)
n=length(Xinit);
D=eye(n);
Xnew=Xinit;
for i =1:10000
    Xold=Xnew;
    for j=1:n
      d=D(j,:);
      fc=@(c)(feval(func,Xnew+c*d));
      a=max(LB(j)-Xnew(j),-10);
      b=min(UB(j)-Xnew(j),10);
      [csol ,Isol]=Goldensection(fc,a,b,tolG);
      Xnew=Xnew+csol*d;
    end
 if norm(Xnew-Xold)<tolcycl
    Xsol=Xnew;
    isol=i;
    break
end
end