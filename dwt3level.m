function [B] = dwt3level( bdip )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
[xar,xhr,xvr,xdr]=dwt2(bdip,'haar');
%[H1]=grayKmean(xar);
%[H2]=grayKmean(xhr);
%[H3]=grayKmean(xvr);
%[H4]=grayKmean(xdr);

 % d1=dct2(xar);
  %  d2=dct2(xhr);
   % d3=dct2(xvr);
    %  d4=dct2(xdr);
      
     % [a1]=zigzag(d1);
%[a2]=zigzag(d2);
%[a3]=zigzag(d3);
%[a4]=zigzag(d4);

      
    %[a1,a2]=meanstdvector(d1);
     %[a3,a4]=meanstdvector(d2);
      %[a5,a6]=meanstdvector(d3);
       %[a7,a8]=meanstdvector(d4);
meanxar=mean2(xar);
meanxhr=mean2(xhr);
meanxvr=mean2(xvr);
meanxdr=mean2(xdr);

stdxar=std2(xar);
stdxhr=std2(xhr);
stdxvr=std2(xvr);  
stdxdr=std2(xdr);

Kurtosisxar=GetSkewAndKurtosis(xar);
%Kurtosisxar=sum(Kurtosisxar)/64; 
Kurtosisxhr=GetSkewAndKurtosis(xhr);
%Kurtosisxhr=sum(Kurtosisxhr)/64;
Kurtosisxvr=GetSkewAndKurtosis(xvr);
%Kurtosisxvr=sum(Kurtosisxvr)/64;
Kurtosisxdr=GetSkewAndKurtosis(xdr);
%Kurtosisxdr=sum(Kurtosisxdr)/64;

[xarr,xhrr,xvrr,xdrr]=dwt2(xar,'haar');
%[H5]=grayKmean(xarr);
%[H6]=grayKmean(xhrr);
%[H7]=grayKmean(xvrr);
%[H8]=grayKmean(xdrr);
%    d5=dct2(xarr);
 %   d6=dct2(xhrr);
  %    d7=dct2(xvrr);
   %   d8=dct2(xdrr);
    %  [a5]=zigzag(d5);
%[a6]=zigzag(d6);
%[a7]=zigzag(d7);
%[a8]=zigzag(d8);
    %[a9,a10]=meanstdvector(d5);
     %[a11,a12]=meanstdvector(d6);
      %[a13,a14]=meanstdvector(d7);
       %[a15,a16]=meanstdvector(d8);
meanxarr=mean2(xarr);
meanxhrr=mean2(xhrr);
meanxvrr=mean2(xvrr);
meanxdrr=mean2(xdrr);

stdxarr=std2(xarr);
stdxhrr=std2(xhrr);
stdxvrr=std2(xvrr);
stdxdrr=std2(xdrr);

Kurtosisxarr=GetSkewAndKurtosis(xarr);
%Kurtosisxarr=sum(Kurtosisxarr)/32; 
Kurtosisxhrr=GetSkewAndKurtosis(xhrr);
%Kurtosisxhrr=sum(Kurtosisxhrr)/32;
Kurtosisxvrr=GetSkewAndKurtosis(xvrr);
%Kurtosisxvrr=sum(Kurtosisxvrr)/32;
Kurtosisxdrr=GetSkewAndKurtosis(xdrr);
%Kurtosisxdrr=sum(Kurtosisxdrr)/32;


[xarrr,xhrrr,xvrrr,xdrrr]=dwt2(xarr,'haar');
%d9=dct2(xarrr);
 %   d10=dct2(xhrrr);
  %    d11=dct2(xvrrr);
   %   d12=dct2(xdrrr);
      
    %  [a9]=zigzag(d9);
%[a10]=zigzag(d10);
%[a11]=zigzag(d11);
%[a12]=zigzag(d12);
%[H9]=grayKmean(xarrr);
%[H10]=grayKmean(xhrrr);
%[H11]=grayKmean(xvrrr);
%[H12]=grayKmean(xdrrr);
meanxarrr=mean2(xarrr);
meanxhrrr=mean2(xhrrr);
meanxvrrr=mean2(xvrrr);
meanxdrrr=mean2(xdrrr);
stdxarrr=std2(xarrr);
stdxhrrr=std2(xhrrr);
stdxvrrr=std2(xvrrr);
stdxdrrr=std2(xdrrr);

Kurtosisxarrr=GetSkewAndKurtosis(xarrr);
%Kurtosisxarrr=sum(Kurtosisxarrr)/16; 
Kurtosisxhrrr=GetSkewAndKurtosis(xhrrr);
%Kurtosisxhrrr=sum(Kurtosisxhrrr)/16;
Kurtosisxvrrr=GetSkewAndKurtosis(xvrrr);
%Kurtosisxvrrr=sum(Kurtosisxvrrr)/16;
Kurtosisxdrrr=GetSkewAndKurtosis(xdrrr);
%Kurtosisxdrrr=sum(Kurtosisxdrrr)/16;

%[xarrrr,xhrrrr,xvrrrr,xdrrrr]=dwt2(xarrr,'haar');
%d13=dct2(xarrrr);
 %   d14=dct2(xhrrrr);
  %    d15=dct2(xvrrrr);
   %   d16=dct2(xdrrrr);
      
    %  [a13]=zigzag(d13);
%[a14]=zigzag(d14);
%[a15]=zigzag(d15);
%[a16]=zigzag(d16);
      
%[H13]=grayKmean(xarrrr);
%[H14]=grayKmean(xhrrrr);
%[H15]=grayKmean(xvrrrr);
%[H16]=grayKmean(xdrrrr);

%meanxarrrr=mean2(xarrrr);
%meanxhrrrr=mean2(xhrrrr);
%meanxvrrrr=mean2(xvrrrr);
%meanxdrrrr=mean2(xdrrrr);
%stdxarrrr=std2(xarrrr);
%stdxhrrrr=std2(xhrrrr);
%stdxvrrrr=std2(xvrrrr);  
%stdxdrrrr=std2(xdrrrr);

%Kurtosisxarrrr=GetSkewAndKurtosis(xarrrr);
%Kurtosisxarrrr=sum(Kurtosisxarrrr)/8; 
%Kurtosisxhrrrr=GetSkewAndKurtosis(xhrrrr);
%Kurtosisxhrrrr=sum(Kurtosisxhrrrr)/8;
%Kurtosisxvrrrr=GetSkewAndKurtosis(xvrrrr);
%Kurtosisxvrrrr=sum(Kurtosisxvrrrr)/8;
%Kurtosisxdrrrr=GetSkewAndKurtosis(xdrrrr);
%Kurtosisxdrrrr=sum(Kurtosisxdrrrr)/8;


B =[ meanxhr meanxvr meanxdr ....
     meanxhrr meanxvrr meanxdrr ....
   meanxarrr meanxhrrr meanxvrrr meanxdrrr ....
     stdxhr stdxvr stdxdr ....
     stdxhrr stdxvrr stdxdrr ....
        stdxarrr stdxhrrr stdxvrrr stdxdrrr ....
        Kurtosisxhr Kurtosisxvr Kurtosisxdr ....
        Kurtosisxhrr Kurtosisxvrr Kurtosisxdrr ....
         Kurtosisxhrrr Kurtosisxvrrr Kurtosisxdrrr ]
    %meanxarrr stdxarrr Kurtosisxarrr Kurtosisxarrrr Kurtosisxhrrrr Kurtosisxvrrrr Kurtosisxdrrrr];
    

%    C=C/C(norm);
   % C=C/sqrt(sum(C.^2));
 %B=[a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14 a15 a16];
%B=B/norm(B);
     
end

