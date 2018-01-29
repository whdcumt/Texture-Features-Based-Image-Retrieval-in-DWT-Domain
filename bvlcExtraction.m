function [ bvlcoutput ] = bvlcExtraction( I )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

          
%I=rgb2gray(Im);
%figure;imshow(I);
ssize=size(I);

I =  double(I);
%figure;imshow(I);


I = padarray( I, [1 1]);


s = size(I);

bs=2;
m=0;

p=0;
w=0;
for i=2: bs : (s(1)-2)
        for j=2: bs : (s(2)-2) 
           k=0;
            m=m+1;
            w=w+1;
             
            bl(:,:,m)=I((i):(i+1),(j):(j+1));  
            abl = reshape(bl(:,:,m),1,4);
             summ=0;
            for r=1:1:4
                summ=summ+abl(r);
            end
            kk=summ;
            meanblock=summ/4;
            
           stdbb=0;
          % for s=1:1:4
           %    stdbb=stdbb+(abl(s)-meanblock).^2
          % end
          
          for t=1:1:2
              for r =1:1:2
                  stdbb=stdbb+(bl(t,r,m)-meanblock).^2;
              end
          end
           stdbb=stdbb/4;
           stdblock=sqrt(stdbb);
           
           for km = -1:1:1
              for lm = -1:1:1
                
                if ((lm == -1) && (km == -1)) || ((km == 0) && (lm == 0)) || ((km == -1) && (lm == 1))|| ((km == 1) && (lm == 1))||((km == 1) && (lm == -1))
                        
                    continue ; 
                end
                
                 k=k+1;
                 kmi = km + i;
                 lmj = lm + j;
                 
                  bx(:,:,k)=I((kmi):(kmi+1),(lmj):(lmj+1));
                  abx = reshape(bx(:,:,k),1,4);
                   summbx=0;
                  for l=1:1:4
                  summbx=summbx+abx(l);
                   end
                %kk=summ;
               meanbx=summbx/4;
                  
               stdbx=0;
               for g=1:1:2
                for h =1:1:2
                  stdbx=stdbx+(bx(g,h,k)-meanblock).^2;
                end
              end
                 stdbx=stdbx/4;
                  stdbbx=sqrt(stdbx);
                  
                totalmean=meanblock*meanbx;
                totalstd=stdblock*stdbbx;
                sx=0;
              for x=i:1:i+1
                for y=j:1:j+1                                    
                sx = sx + I(x,y)*I(x+km,y+lm)-totalmean;
                end 
              end
                sxa(k)=abs(sx/(4*totalstd));
                  
                sxa(isnan(sxa(k)))=0;
               sxa(isinf(sxa(k)))=0;
                  
              end
           end
          % gfhg=w;
           bvlc(w)=max(sxa)-min(sxa);
           
        end
end
st=ssize(1)/2;
dd=ssize(2)/2;
ee=0;
for qq = 1 : st
        for aa = 1 :  dd
            ee=ee+1;
            bvlcimage(qq,aa)=bvlc(ee);
        end
end
%figure;imshow(bvlcimage);
 bvlcoutput=bvlcimage;




end

