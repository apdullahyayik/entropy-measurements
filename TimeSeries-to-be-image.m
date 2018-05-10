close all,clear all, clc
a=rand(1,1000);
R= entropyM2(a, 'grid', 1, 100, 0);
G= entropyM2(a, 'grid', 2, 100, 0);
B= entropyM2(a, 'grid', 3, 100, 0);
im(:,:,1)=R;
im(:,:,2)=G;
im(:,:,3)=B;
imshow(im)
