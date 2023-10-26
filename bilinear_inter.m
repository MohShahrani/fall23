mat = randi(255,[10 10]);
bilin_mat = zeros(20,20);

% x_index=1;
% y_index=1;
% for x=1:2:20
%     for y =1:2:20
%         bilin_mat(x,y) = mat(x_index,y_index);
%         y_index = y_index+1;
%     end
%     y_index =1;
%     x_index = x_index +1;
% end
    x_index=1;
for x=1:2:20
    temp(x,:) = mat(x_index,:);
    temp(x+1,:) = zeros(10,1);
    x_index = x_index +1;
end

y_index=1;
for y=1:2:20
    temp(:,y) = mat(:,y_index);
    temp(:,y_index) = zeros(1,10);
    y_index = y_index +1;
end
