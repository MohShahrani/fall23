x = 0:0.1:10;
f = sin(x .*pi) .* x.^1.9;
g = cos(0.5*pi.*x).*x.^1.7;
m = f.*g;
figure(1);
subplot(2,1,1);
plot(x, f, 'b--');
xlabel('Time');
ylabel ('Amplitude');
title ('Plot of f(x) ');
legend ('f (x) ');

subplot(2, 1, 2) ;
plot(x,g, 'r.');
xlabel('Time');
ylabel('Amplitude');
title('Plot of g(x) ');
legend('g (x) ');

figure(2);
plot (x,m, 'g-');
xlabel ('Time');
ylabel('Amplitude') ;
title('Plot of m(x) ');
legend('m(x) ');