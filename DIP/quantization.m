% Arr = uint8(randi(255,[512 512]));
% 
% for x=1:512
%     for y=1:512
%         new_Arr(x,y) = 128 *(Arr(x,y)/(256/2));
%     end
% end
% 


% Read image "walkbridge.tif" 
f= imread("images/walkbridge.tif");
f=f(:,:,1);

for x=1 : 512
    for y=1 : 512
%         Quantization formula
        new_img(x,y) = 128 *(f(x,y)/(256/2));
    end
end

for x=1 : 512
    for y=1 : 512
%         Quantization formula
        new_img_64(x,y) = 64 *(f(x,y)/(256/4));
    end
end

for x=1 : 512
    for y=1 : 512
%         Quantization formula
        new_img_32(x,y) = 32 *(f(x,y)/(256/8));
    end
end

for x=1 : 512
    for y=1 : 512
%         Quantization formula
        new_img_256(x,y) = 256 *(f(x,y)/(256));
    end
end

for x=1 : 512
    for y=1 : 512
%         Quantization formula
        new_img_16(x,y) = 16 *(f(x,y)/(256/16));
    end
end

figure;
% use subplot to show the quantized images
subplot(2,3,1)
imshow(f)
subplot(2,3,3)
imshow(new_img,[])
subplot(2,3,4)
imshow(new_img_64,[])
subplot(2,3,5)
imshow(new_img_32,[])
subplot(2,3,2)
imshow(new_img_256,[])
subplot(2,3,6)
imshow(new_img_16,[])



figure;
subplot(3,1,1)
histogram(f)
subplot(3,1,2)
histogram(new_img_32)
subplot(3,1,3)
histogram(new_img_64)

% show the histogram of the quantized image