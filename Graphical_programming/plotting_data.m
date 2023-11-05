data = load("london_weather.mat");
weather = data.london_weather;
y = weather(1:365,7);
y2= weather(1:365,5);
x = 1:1:365;

figure(1);
plot(x,y,x,y2);
title('Temp in London')
xlabel("days")
ylabel("temp")

marks = [20 20 15 18 12 20 19 8 5];
figure(2)
bar(marks);
title("student marks");
xlabel("students");
ylabel("marks");

figure(3)
barh(marks);
title("student marks");
xlabel("students");
ylabel("marks");

figure(4)
pie(marks);
title("student marks");

img = imread("down256.tif");
figure(5)
imshow(img);
title("showing images in matalab");
