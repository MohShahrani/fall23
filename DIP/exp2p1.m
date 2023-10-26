% read the image mandril_color.tif from the provided image set
original_img = imread("images/mandril_color.tif");
% get # rows, columns and, dimentsions
% img_size = size(original_img);
[rows, coulmns, dimenstion] = size(original_img);
% use function zeros() to create a matrix with rows coloumns similar to the image
flipped = zeros(rows,coulmns,dimenstion);
% use function uint8() to convert newly created matrix to datatype similar to the original image.
flipped = uint8(flipped);
% create two nested for loops to go over all image pixles 
x_ = rows;
for x = 1:rows
    y_ = coulmns;
    for y = 1:coulmns
        flipped(x_,y_,:) = original_img(x,y,:); 
        y_ = y_ - 1;
    end
    x_ = x_ -1;
end
% use the function image() to display the flipped image stored in your matrix
image(flipped)