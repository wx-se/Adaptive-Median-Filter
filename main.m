%% 基于自适应中值滤波器对图像去噪处理
clear all;
close all;
clc;
img=rgb2gray(imread('.\image\Lena.jpg'));       %将原图转成灰度图像
figure;imshow(img,[]);title('原图');     %显示原始图像
[m n]=size(img);            %m,n为图像的行数和列数
img=imnoise(img,'salt & pepper',0.2);   %加入20%的椒盐噪声
% imwrite(img,'.\image\lena_with_salt_noise.jpg') %保存噪声图片
%img = im2double(imread('lena_with_salt_noise.jpg'));%读取噪声图片
figure;imshow(img,[]);title('加入20%的椒盐噪声');     %显示加入椒盐噪声后的图像

%% 中值滤波
img_median = medianfilt(img)
figure;imshow(img_median,[]);title('中值滤波后的图像');     %显示中值滤波后的图像
% imwrite(img,'.\image\lena_after_MF.jpg')
%% 自适应中值滤波
img_AMF=self_adaption_median_filt(img)
%显示加入椒盐噪声的图像通过自适应中值滤波器后的结果
figure;imshow(img_AMF,[]);title('自适应中值滤波后的图像');
% imwrite(img,'.\image\lena_after_SEMF.jpg')