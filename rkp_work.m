function FV=Narendra_work(I)
Y=rgb2ycbcr(I);
Yimage=Y(:,:,1);
CBimage=Y(:,:,2);
CRimage=Y(:,:,3);


    [CB]=quantizationimage(CBimage); 
    [A]=cbextract(CB);
    
    [CR]=quantizationimage(CRimage); 
    [B]=crextract(CR);
    
     %TEXTURE FEATURE EXTRACTION 
     [xim]=quantizationimage(Yimage); 
     [bdip] = bdipExtraction(xim);
       
     [C]=dwt3level(bdip); 
        
     
     [bvlc] = bvlcExtraction(xim);
      
       
       [D]=dwt3level(bvlc);
       
       
       vector2=[A B];
        vector2=vector2/std(vector2);
       
        vector1=[C D];
        vector1=vector1/std(vector1);       
        
        FV=[vector1 vector2];
       





end