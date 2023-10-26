clear all
t=-10:10; %vector time
xn=randi(10,[1 numel(t)]); % Your signal
x_n=flip(xn)
xe=0.5*(x_n+xn)
xo=0.5*(xn-x_n)
figure(2)
subplot(3,1,1);
stem(t,xn);
title('Your signal x')
subplot(3,1,2);
stem(t,xe);
title('Even part')
subplot(3,1,3);
stem(t,xo);
title('Odd part')