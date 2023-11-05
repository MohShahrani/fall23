clear all
down32 = imread("DIP/down32.tif");
bilin = zeros(512,512);
for x = 1 : 16 : 512
    for y = 1 : 16 : 512
        bilin(x,y)=down32(ceil(x/16),ceil(y/16));
    end
end
%%
x1=1;
x2=17;
y1=1;
y2=17;
values=[];
xIndex=1;
yIndex=1;
for x = 1 : 16 : 512
    values=[values,x];  
end

%%

for x = 1 : 512
    if(x>1 && ismember(x,values))
        xIndex = xIndex+1;
        if(xIndex<32)
            x1=values(xIndex);
            x2=values(xIndex+1);
        end
    end
    yIndex=1;
    y1=1;
    y2=17;
    for y = 1 : 512
        if(y>1 && ismember(y,values))
            yIndex = yIndex+1;
            if(yIndex<32)
                y1=values(yIndex);
                y2=values(yIndex+1);
            end
        end

        f1=((y2-y)/(y2-y1))*bilin(x1,y1) + ((y-y1)/(y2-y1))*bilin(x1,y2);
        f2=((y2-y)/(y2-y1))*bilin(x2,y1) + ((y-y1)/(y2-y1))*bilin(x2,y2);
        bilin(x,y)=((x2-x)/(x2-x1))*f1 + ((x-x1)/(x2-x1))*f2;
    end
end
%%
figure(1);
subplot(2,1,1)
imshow(down32)
subplot(2,1,2)
imshow(bilin,[])