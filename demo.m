%% 2DACS- Wiener filtering
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Multispectral Satellite Image Denoising via Adaptive Cuckoo Search-Based Wiener Filter
%Shilpa Suresh, Shyam Lal, Chen Chen, Turgay Celik
%Published in: IEEE Transactions on Geoscience and Remote Sensing ( Volume: 56 , Issue: 8 , Aug. 2018 )
%DOI: 10.1109/TGRS.2018.2815281
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear all;
close all
  
I = im2double(imread('1.jpg'));
r = I(:,:,1);
g = I(:,:,2);
b = I(:,:,3);
sizeorig=size(I);
 rr = imresize(r,1);
 gr = imresize(g,1);
 br = imresize(b,1);
Im(:,:,1) = rr;
Im(:,:,2) = gr;
Im(:,:,3) = br;
figure;imshow(Im);
nvar =  0.01; %variance of noise
ngrays = imnoise(Im,'gaussian',0,nvar);  %white gaussian noise
figure;imshow(ngrays );

%% Denoised image
y=adaptivecucko(Im,ngrays,50);
figure;
imshow(y);



