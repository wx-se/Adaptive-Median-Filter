%% ��������Ӧ��ֵ�˲�����ͼ��ȥ�봦��
clear all;
close all;
clc;
img=rgb2gray(imread('.\image\Lena.jpg'));       %��ԭͼת�ɻҶ�ͼ��
figure;imshow(img,[]);title('ԭͼ');     %��ʾԭʼͼ��
[m n]=size(img);            %m,nΪͼ�������������
img=imnoise(img,'salt & pepper',0.2);   %����20%�Ľ�������
%imwrite(img,''.\image\lena_with_salt_noise.jpg') %��������ͼƬ
%img = im2double(imread('lena_with_salt_noise.jpg'));%��ȡ����ͼƬ
figure;imshow(img,[]);title('����20%�Ľ�������');     %��ʾ���뽷���������ͼ��

%% ��ֵ�˲�
img_median = medianfilt(img)
figure;imshow(img_median,[]);title('��ֵ�˲����ͼ��');     %��ʾ��ֵ�˲����ͼ��
%% ����Ӧ��ֵ�˲�
img_AMF=self_adaption_median_filt(img)
%��ʾ���뽷��������ͼ��ͨ������Ӧ��ֵ�˲�����Ľ��
figure;imshow(img_AMF,[]);title('����Ӧ��ֵ�˲����ͼ��');