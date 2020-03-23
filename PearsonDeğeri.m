function pearson(x, y)

a=length(x);
b=length(y);
toplam1=0;
toplam2=0;
toplam3=0;
if a~=b
    input('X ve Y matrislerinin deðerleri eþit deðil.');

elseif a==b
   
    o1=mean(x);
    o2=mean(y);
    
    for i=1 : a
    
        toplam1=toplam1+(x(i)-o1)*(y(i)-o1);
        toplam2=toplam2+((x(i)-o1)^2);
        toplam3=toplam3+((y(i)-o2)^2);
        
    end
    
    r=toplam1/(sqrt(toplam2*toplam3));
end    

disp(['Korelasyon Katsayýsý=',num2str(r),r]);
end