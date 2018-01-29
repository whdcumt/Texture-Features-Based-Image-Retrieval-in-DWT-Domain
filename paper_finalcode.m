clear all;
clc
close all;
load('FV_msk');
top_imgs=20;
min=272;
max=272;
srcFiles = dir('E:\New folder (2)\Data1000\*.jpg');
kk=1;
cc=100;
for ii=min:max
Image_Number = ii;
imagenumber=sprintf('%0.3d', Image_Number);
% imagenumber=num2str(32);
% qry=imread(strcat('E:\gbvs\gbvs\GHIM-10K\',imagenumber ,'.jpg'));
% % qry=imread('E:\FINAL_CBIR_CODE\SVD_Code\Data1000\955.jpg');  % Select Query Image
% eval=Final_FV_DCT_conf(qry);
% eval=eval/norm(eval);
eval=FV{ii+1};

  % the folder in which the image database exists 
for i = 1 :length(srcFiles)
    
%     filename = strcat('E:\gbvs\gbvs\GHIM-10K\',srcFiles(i).name);
%     I = imread(filename);
%     
%        FV_I=Final_FV_DCT_conf(I);
% %        FV_I=FV_I/norm(FV_I);
%         if(i==10000)
%             i=9999;
%         end 
%        FV_I=eval_f_10000(i,:);
%        FV{i}=FV_I';           % Feature vectors of all images
%          D=abs(FV_I)-abs(FV_qry);  
%          D=D.^2;
%          D=sum(D);
%          D=max(abs(FV_I)-abs(FV_qry));    
       D = pdist2(FV{i},eval,'minkowski',2);  % P=1 means city block (or Manhattan Distance) and P=2 means Euclidean 
     in(i)=i-1;
     dst(i)=D;
%      disp(ii)
 end
FV_vectors=transpose(FV);

iz=transpose(in);
drt=transpose(dst);
final=[drt,iz];
final1=sortrows(final);     % contains all indices according to the sorted distances
Sort_D=final1(:,1);         % Sorted distance
final2=final1(:,2);         % all indeces of images with respect to sort distance
newind=final2(1:top_imgs);  % Top 20 images for retrieval.
k=4;

% subplot(1,3,3),imshow('E:\Matlab work\CBIR Codefinal\Data1000\444.jpg')
for j=1:size(newind,1)
   
   subplot(k,5,j),imshow(strcat('E:\New folder (2)\Data1000\',srcFiles(newind(j)+1).name)),xlabel(['D=',num2str(Sort_D(j))]);
 
end
% imwrite(n,'o.jpg');
e=j(:,1);
fg=0;
for k=1:e
if((newind(k)>=floor(str2num(imagenumber)/cc)*cc) && (newind(k)<(floor(str2num(imagenumber)/cc)*cc+cc)))
fg=fg+1;
end
end
query_images(kk)=ii;
 Precision(kk) = 100*fg/j ;
 Recall(kk) = 100*fg/cc; 
 F_score(kk)=2*Precision(kk)*Recall(kk)/(Precision(kk)+Recall(kk));
 kk=kk+1;

end
query_images=query_images';
Precision=Precision';
Recall=Recall';
F_Score=F_score';
Final_result=[Precision,Recall,F_Score, query_images];
Sort_Mteric_100=sortrows(Final_result);
