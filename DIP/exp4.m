% read "cameraman.tif"
f=imread("images/cameraman.tif");

% use only the first layer of the image
f=f(:,:,1);

%down sampling from 512*512 to 265*265
% create matrix 256*256
down256 = zeros(256,256);
% nested for loops 
for x =  1: 256
    for y = 1 : 256
        down256(x,y) = f(x*2,y*2);
    end
end
down256=uint8(down256);


%down sampling from 512*512 to 128*128
down128 = zeros(128,128);
% nested for loops 
for x =  1: 128
    for y = 1 : 128
        down128(x,y) = f(x*4,y*4);
    end
end
down128=uint8(down128);



%down sampling from 512*512 to 64*64



% up sampling from 265*265 to 512*512
% create matrix 512*512
up256 = zeros(512,512);
for x = 1 :512 
    for y  =  1:512 
        up256(x,y) = down256(ceil(x/2),ceil(y/2));
    end
end
imshow(uint8(up256))

% up sampling from 128*128 to 512*512


% use subplots to show the images

%write images using imwrite function

