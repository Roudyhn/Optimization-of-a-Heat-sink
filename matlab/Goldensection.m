function [Xsol,isol] = Goldensection(func,a,b,tol)
itr=0;
alpha=0.618;
c=a+(1-alpha)*(b-a);
d=a+alpha*(b-a);
fc = feval(func,c);
fd = feval(func,d);
while abs(b-a)>tol && itr<10000
    if fc<fd
        b=d;
        d=c;
        fd=fc;
        c=a+(1-alpha)*(b-a);
        fc = feval(func,c);
    else 
        a=c;
        c=d;
        fc=fd;
        d=a+alpha*(b-a);
        fd = feval(func,d);
            
     end
     itr = itr+1;
end
Xsol=(a+b)/2;
isol=itr;
end
