clc
clear
close all
[f,p]=uigetfile({'*.jpg';'*.png'},'select an image');
img= fullfile(p,f);
im=imread(img);
figure('menubar','none','color','k');
subplot 221 
imshow(im)

%%
% rd= im(:,:,1);
% gn =im(:,:,2);
% bl =im(:,:,3);
rd=im; gn= im; bl= im;
rd(:,:,[2 3])=0;
bl(:,:,[1 2])=0;
gn(:,:,[ 1 3]) =0;

subplot 222
imshow(rd)
subplot 223 
imshow(gn)
subplot 224 
imshow(bl)