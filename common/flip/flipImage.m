function [img,shape]=flipImage(img,shape)
%����������������תͼƬ�������㣬��������������������д��ͼƬ�ķ���
%shape=annotation_load('*.pts','w300');%����shape
%img=imread('*.png');
%imwrite(imgmat,'*.png');%д��ͼƬ
%./common/io/write_w300_shape.m��������ΰ�shapeд���ļ��С�
%flip image & shape
if size(img,3) > 1
    img_gray   = fliplr(rgb2gray(uint8(img)));
else
    img_gray   = fliplr(img);
end

if 0
    disp('before flipping...');
    figure(1); imshow(img); hold on;
    draw_shape(shape(:,1),...
        shape(:,2),'r');
    hold off;
   % pause;
end
clear img;
img = img_gray;
clear img_gray;

shape = flipshape(shape);
shape(:,1) = size(img,2)+1 - shape(:, 1);


if 0
    disp('after flipping...');
    figure(1); imshow(img); hold on;
    draw_shape(shape(:,1),...
        shape(:,2),'y');
    hold off;
   % pause;
end