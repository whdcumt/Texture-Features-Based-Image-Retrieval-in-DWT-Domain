clear all
clc
% eval_f_1000=zeros(1000,186);
% srcFiles = dir('E:\gbvs\gbvs\Data1000\*.jpg');  % the folder in which the image database exists 
% for i = 1 :length(srcFiles)
%     imagenumber=sprintf('%0.3d', Image_Number);
%     % imagenumber=num2str(32);
%     qry=imread(strcat('E:\gbvs\gbvs\Data1000\',imagenumber ,'.jpg'));
%     eval=Final_FV_DCT_conf(qry);
%     eval=eval/norm(eval);
%     eval_f_1000(ii,:)=eval;
% %     figure(ii+1); imshow(eval);
% %     imwrite(eval,strcat('E:\gbvs\gbvs\Data1000_FDB\',imagenumber ,'.png'));
% end

srcFiles = dir('E:\New folder (2)\Data1000\*.jpg');  % the folder in which the image database exists

for i = 1 :length(srcFiles) 
   filename = strcat('E:\New folder (2)\Data1000\',srcFiles(i).name);
   I = imread(filename);
   FV_I=mukeshproject_work(I);
   %FV_I=FV_I/norm(FV_I);
   FV{i}=FV_I;
   
end