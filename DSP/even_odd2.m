x = [1,7,4,3,8,9];
x_r = flip(x);
n = length(x);
time_vec = 0:n-1;
even_comp = 0.5 * (x+x_r);
odd_comp = 0.5 * (x-x_r);
subplot(3,1,1)
stem(x)
subplot(3,1,2)
stem(time_vec,even_comp)
subplot(3,1,3)
stem(time_vec,odd_comp)

