img = imread('images\mandril_color.tif');
[rows , columns,dimensions] = size(img);
flipped = zeros(rows,columns,dimensions);
flipped = uint8(flipped);
x_ = rows;

for x=1:rows
    y_ = columns;
    for y=1:columns
        flipped(x_,y_,1) = img(x,y,1);
        flipped(x_,y_,2) = img(x,y,2);
        flipped(x_,y_,3) = img(x,y,3);
        y_ = y_-1;
    end
    x_ = x_-1;
end
image(flipped)

