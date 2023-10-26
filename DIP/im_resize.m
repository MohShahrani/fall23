% read image "kku.jpg" into varibale I and get its size
I = imread('images/kku.jpg');
S = size(I)
% use imresize function to scale the image and get 
% image new size
I2 = imresize(I,0.5);
S2 = size(I2)
% Stretch the image to 600 x 800 size using imresize
I3 = imresize(I,[600 800]);
S3 = size(I3)

% show both images
figure
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imshow(I3)