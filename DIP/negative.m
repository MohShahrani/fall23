% read image "toys1.gif" into variable x
x = imread('images/toys1.gif');
% WHAT will be the range of values of x?
% Subtract 255 out of each pixel of x
c = double(x) - 255;
% PAY ATTENTION to the range of values, is it possible
% to show an image of the same range of values.
y = uint8(c*-1);

% use subplot function to show the original image 
% and the negtive in one figure
figure;
subplot(2,1,1)
imshow(x)
subplot(2,1,2)
imshow(y)

