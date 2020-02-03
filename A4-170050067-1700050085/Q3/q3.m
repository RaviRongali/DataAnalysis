images = loadMNISTImages('train-images-idx3-ubyte');
images = reshape(images, 28, 28, []);
labels = loadMNISTLabels('train-labels-idx1-ubyte');
s=size(labels);
tic

zerocount= 0;
onecount =0;
twocount = 0;
threecount =0;
fourcount=0;
fivecount =0;
sixcount =0;
sevencount =0;
eightcount=0;
ninecount=0;

Zeromat=[];
Onemat =[];
Twomat =[];
Threemat=[];
Fourmat = [];
Fivemat=[];
Sixmat= [];
Sevenmat=[];
Eightmat=[];
Ninemat = [];


for i=1:s
    if labels(i) == 0
        img = images(:,:,i);
        img = img(:);
        Zeromat = [Zeromat,img];
        zerocount = zerocount +1;

    
    elseif labels(i) == 1
        img = images(:,:,i);
        img = img(:);
        Onemat = [Onemat,img];
        onecount = onecount +1;

    
    elseif labels(i) == 2
        img = images(:,:,i);
        img = img(:);
        Twomat = [Twomat,img];
        twocount = twocount +1;

    
    elseif labels(i) == 3
        img = images(:,:,i);
        img = img(:);
        Threemat = [Threemat,img];
        threecount = threecount +1;

    
    elseif labels(i) == 4
        img = images(:,:,i);
        img = img(:);
        Fourmat = [Fourmat,img];
        fourcount = fourcount +1;

    
    elseif labels(i) == 5
        img = images(:,:,i);
        img = img(:);
        Fivemat = [Fivemat,img];
        fivecount = fivecount +1;

    
    elseif labels(i) == 6
        img = images(:,:,i);
        img = img(:);
        Sixmat = [Sixmat,img];
        sixcount = sixcount +1;

    
    elseif labels(i) == 7
        img = images(:,:,i);
        img = img(:);
        Sevenmat = [Sevenmat,img];
        sevencount = sevencount +1;

    
    elseif labels(i) == 8
        img = images(:,:,i);
        img = img(:);
        Eightmat = [Eightmat,img];
        eightcount = eightcount +1;

    
    elseif labels(i) == 9
        img = images(:,:,i);
        img = img(:);
        Ninemat = [Ninemat,img];
        ninecount = ninecount +1;

        end
    
    
end
ans0=mean(Zeromat');
ans1=mean(Onemat');
ans2=mean(Twomat');
ans3=mean(Threemat');
ans4=mean(Fourmat');
ans5=mean(Fivemat');
ans6=mean(Sixmat');
ans7=mean(Sevenmat');
ans8=mean(Eightmat');
ans9=mean(Ninemat');

k0=cov(Zeromat');
k1=cov(Onemat');
k2=cov(Twomat');
k3=cov(Threemat');
k4=cov(Fourmat');
k5=cov(Fivemat');
k6=cov(Sixmat');
k7=cov(Sevenmat');
k8=cov(Eightmat');
k9=cov(Ninemat');



[eigen_vector0,eigen_matrix0]=eig(k0);
[max_eigen0,ind0]=max(eigen_matrix0(:));
[M0,N0]=ind2sub(size(eigen_matrix0),ind0);
max_eigen_vect0=eigen_vector0(:,M0);
max_eigen_matrix0=reshape(max_eigen_vect0,[28,28]);
mean_matrix0=reshape(ans0',[28,28]);
image0d=mean_matrix0+sqrt(max_eigen0*max_eigen_matrix0);
image0=mean_matrix0;
image0e=mean_matrix0-sqrt(max_eigen0*max_eigen_matrix0);

[eigen_vector1,eigen_matrix1]=eig(k1);
[max_eigen1,ind1]=max(eigen_matrix1(:));
[M1,N1]=ind2sub(size(eigen_matrix1),ind1);
max_eigen_vect1=eigen_vector1(:,M1);
max_eigen_matrix1=reshape(max_eigen_vect1,[28,28]);
mean_matrix1=reshape(ans1',[28,28]);
image1d=mean_matrix1+sqrt(max_eigen1*max_eigen_matrix1);
image1=mean_matrix1;
image1e=mean_matrix1-sqrt(max_eigen1*max_eigen_matrix1);

[eigen_vector2,eigen_matrix2]=eig(k2);
[max_eigen2,ind2]=max(eigen_matrix2(:));
[M2,N2]=ind2sub(size(eigen_matrix2),ind2);
max_eigen_vect2=eigen_vector2(:,M2);
max_eigen_matrix2=reshape(max_eigen_vect2,[28,28]);
mean_matrix2=reshape(ans2',[28,28]);
image2d=mean_matrix2+sqrt(max_eigen2*max_eigen_matrix2);
image2=mean_matrix2;
image2e=mean_matrix2-sqrt(max_eigen2*max_eigen_matrix2);

[eigen_vector3,eigen_matrix3]=eig(k3);
[max_eigen3,ind3]=max(eigen_matrix3(:));
[M3,N3]=ind2sub(size(eigen_matrix3),ind3);
max_eigen_vect3=eigen_vector3(:,M3);
max_eigen_matrix3=reshape(max_eigen_vect3,[28,28]);
mean_matrix3=reshape(ans3',[28,28]);
image3d=mean_matrix3+sqrt(max_eigen3*max_eigen_matrix3);
image3=mean_matrix3;
image3e=mean_matrix3-sqrt(max_eigen3*max_eigen_matrix3);

[eigen_vector4,eigen_matrix4]=eig(k4);
[max_eigen4,ind4]=max(eigen_matrix4(:));
[M4,N4]=ind2sub(size(eigen_matrix4),ind4);
max_eigen_vect4=eigen_vector4(:,M4);
max_eigen_matrix4=reshape(max_eigen_vect4,[28,28]);
mean_matrix4=reshape(ans4',[28,28]);
image4d=mean_matrix4+sqrt(max_eigen4*max_eigen_matrix4);
image4=mean_matrix4;
image4e=mean_matrix4-sqrt(max_eigen4*max_eigen_matrix4);

[eigen_vector5,eigen_matrix5]=eig(k5);
[max_eigen5,ind5]=max(eigen_matrix5(:));
[M5,N5]=ind2sub(size(eigen_matrix5),ind5);
max_eigen_vect5=eigen_vector5(:,M5);
max_eigen_matrix5=reshape(max_eigen_vect5,[28,28]);
mean_matrix5=reshape(ans5',[28,28]);
image5d=mean_matrix5+sqrt(max_eigen5*max_eigen_matrix5);
image5=mean_matrix5;
image5e=mean_matrix5-sqrt(max_eigen5*max_eigen_matrix5);

[eigen_vector6,eigen_matrix6]=eig(k6);
[max_eigen6,ind6]=max(eigen_matrix6(:));
[M6,N6]=ind2sub(size(eigen_matrix6),ind6);
max_eigen_vect6=eigen_vector6(:,M6);
max_eigen_matrix6=reshape(max_eigen_vect6,[28,28]);
mean_matrix6=reshape(ans6',[28,28]);
image6d=mean_matrix6+sqrt(max_eigen6*max_eigen_matrix6);
image6=mean_matrix6;
image6e=mean_matrix6-sqrt(max_eigen6*max_eigen_matrix6);

[eigen_vector7,eigen_matrix7]=eig(k7);
[max_eigen7,ind7]=max(eigen_matrix7(:));
[M7,N7]=ind2sub(size(eigen_matrix7),ind7);
max_eigen_vect7=eigen_vector0(:,M7);
max_eigen_matrix7=reshape(max_eigen_vect7,[28,28]);
mean_matrix7=reshape(ans7',[28,28]);
image7d=mean_matrix7+sqrt(max_eigen7*max_eigen_matrix7);
image7=mean_matrix7;
image7e=mean_matrix7-sqrt(max_eigen7*max_eigen_matrix7);

[eigen_vector8,eigen_matrix8]=eig(k8);
[max_eigen8,ind8]=max(eigen_matrix8(:));
[M7,N7]=ind2sub(size(eigen_matrix7),ind8);
max_eigen_vect7=eigen_vector7(:,M7);
max_eigen_matrix7=reshape(max_eigen_vect7,[28,28]);
mean_matrix7=reshape(ans7',[28,28]);
image7d=mean_matrix7+sqrt(max_eigen7*max_eigen_matrix7);
image7=mean_matrix7;
image7e=mean_matrix7-sqrt(max_eigen7*max_eigen_matrix7);

[eigen_vector8,eigen_matrix8]=eig(k8);
[max_eigen8,ind8]=max(eigen_matrix8(:));
[M8,N8]=ind2sub(size(eigen_matrix8),ind8);
max_eigen_vect8=eigen_vector8(:,M8);
max_eigen_matrix8=reshape(max_eigen_vect8,[28,28]);
mean_matrix8=reshape(ans8',[28,28]);
image8d=mean_matrix8+sqrt(max_eigen8*max_eigen_matrix8);
image8=mean_matrix8;
image8e=mean_matrix8-sqrt(max_eigen8*max_eigen_matrix8);

[eigen_vector9,eigen_matrix9]=eig(k9);
[max_eigen9,ind9]=max(eigen_matrix9(:));
[M9,N9]=ind2sub(size(eigen_matrix9),ind9);
max_eigen_vect9=eigen_vector9(:,M9);
max_eigen_matrix9=reshape(max_eigen_vect9,[28,28]);
mean_matrix9=reshape(ans9',[28,28]);
image9d=mean_matrix9+sqrt(max_eigen9*max_eigen_matrix9);
image9=mean_matrix9;
image9e=mean_matrix9-sqrt(max_eigen9*max_eigen_matrix9);


b0=eig(k0);
b1=eig(k1);
b2=eig(k2);
b3=eig(k3);
b4=eig(k4);
b5=eig(k5);
b6=eig(k6);
b7=eig(k7);
b8=eig(k8);
b9=eig(k9);

B0=b0;
B1=b1;
B2=b2;
B3=b3;
B4=b4;
B5=b5;
B6=b6;
B7=b7;
B8=b8;
B9=b9;
figure(1);
plot(B0(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 0');

figure(2);
plot(B1(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 1');

figure(3);
plot(B2(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 2');

figure(4);
plot(B3(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 3');

figure(5);
plot(B4(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 4');

figure(6);
plot(B5(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 5');

figure(7);
plot(B6(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 6');

figure(8);
plot(B7(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 7');

figure(9);
plot(B8(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digits 8');

figure(10);
plot(B9(:,1));

xlabel('index');
ylabel('eigenvalues');
title('Plot of eigenvalues for digit 9');

figure(11);
subplot(5,6,1);
imshow(image0e./255);
subplot(5,6,2);
imshow(image0./255);
subplot(5,6,3);
imshow(image0d./255);

subplot(5,6,4);
imshow(image1e./255);
subplot(5,6,5);
imshow(image1./255);
subplot(5,6,6);
imshow(image1d./255);


subplot(5,6,7);
imshow(image2e./255);
subplot(5,6,8);
imshow(image2./255);
subplot(5,6,9);
imshow(image2d./255);

subplot(5,6,10);
imshow(image3e./255);
subplot(5,6,11);
imshow(image3./255);
subplot(5,6,12);
imshow(image3d./255);

subplot(5,6,13);
imshow(image4e./255);
subplot(5,6,14);
imshow(image4./255);
subplot(5,6,15);
imshow(image4d./255);

subplot(5,6,16);
imshow(image5e./255);
subplot(5,6,17);
imshow(image5./255);
subplot(5,6,18);
imshow(image5d./255);

subplot(5,6,19);
imshow(image6e./255);
subplot(5,6,20);
imshow(image6./255);
subplot(5,6,21);
imshow(image6d./255);

subplot(5,6,22);
imshow(image7e./255);
subplot(5,6,23);
imshow(image7./255);
subplot(5,6,24);
imshow(image7d./255);

subplot(5,6,25);
imshow(image8e./255);
subplot(5,6,26);
imshow(image8./255);
subplot(5,6,27);
imshow(image8d./255);

subplot(5,6,28);
imshow(image9e./255);
subplot(5,6,29);
imshow(image9./255);
subplot(5,6,30);
imshow(image9d./255);
toc