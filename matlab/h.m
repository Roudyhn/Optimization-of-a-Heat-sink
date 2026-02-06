function y=h(x)
Sx=x(1);
Sy=x(2);
L=x(3);
y=(sqrt((L+Sx)^2 +(Sy+0.008)^2)/(L+Sx))-1.5;
end