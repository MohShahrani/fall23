x = 0:0.1:5;
f = [1 4 5 3 2 1 1 1 0 1];
g = [0 1 0 0 0 0 0];
h = conv(g,f);
y = conv(h,f);
subplot(4,1,1);
stem(f)
subplot(4,1,2);
stem(g)
subplot(4,1,3);
stem(h)
subplot(4,1,4);
stem(y)