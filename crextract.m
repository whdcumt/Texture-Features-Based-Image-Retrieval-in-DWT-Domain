function [ A ] = crextract( I )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[xar,xhr,xvr,xdr]=dwt2(I,'haar');


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



A =[ meanxhr meanxvr meanxdr ....
     meanxarr meanxhrr meanxvrr meanxdrr ....
     stdxhr stdxvr stdxdr ....
     stdxarr stdxhrr stdxvrr stdxdrr ....
        Kurtosisxhr Kurtosisxvr Kurtosisxdr ....
         Kurtosisxhrr Kurtosisxvrr Kurtosisxdrr  ]








%dc1=dct2(xar);
%dc2=dct2(xhr);
%dc3=dct2(xvr);
%dc4=dct2(xdr);
%dc5=dct2(xarr);
%dc6=dct2(xhrr);
%dc7=dct2(xvrr);
%dc8=dct2(xdrr);

%[a1]=zigzag(dc1);
%[a2]=zigzag(dc2);
%[a3]=zigzag(dc3);
%[a4]=zigzag(dc4);
%[a5]=zigzag(dc5);
%[a6]=zigzag(dc6);
%[a7]=zigzag(dc7);
%[a8]=zigzag(dc8);


%A=[a1 a2 a3 a4 a5 a6 a7 a8 ];
%A=[a1 a4 a8 a11];
end

