function [ bdip ] = bdipExtraction(I )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

 %I=rgb2gray(Im);
    %figure;imshow(I);
    I=double(I);
    % figure;imshow(I);
      s=size(I);

        w=1;         
      bs=2;     
       k = 0;
      bdip=[];
    dd=(s(1))/bs;
     ff=(s(2))/bs;
   %bdip=zeros(dd,ff);
     %ds=size(bdip)
      for i=w: bs : (s(1)-w)
         for j=w : bs : (s(2)-w)
            k =k +1;
          bl(:,:,k)=I((i):(i+1),(j):(j+1));
       
          % mx(k) = max(max(bl(:,:,k)));
            abl = reshape(bl(:,:,k),1,4);
           mx=max(abl);
      
            %sb(k) = sum(sum(bl(:,:,k)),2);
              summation=sum(abl);
            %di(k) = double(sb(k))/double(mx(k));
        
             %d(k) = 4 - (sb(k))/(mx(k));
                 y=summation/mx;
                 
               d(k)=4-y;
            end
      end
      %v=matrix(d);

         %w=uint8(d);
        %for f=1:16384

          t=0;

       for g=1:dd
          for h=1:ff
           t=t+1;
           %t=64*(g-1)+h;
             bdip(g,h) = d(t);
          end
       end
       


end

