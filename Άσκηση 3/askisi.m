[image, map] =imread('/home/sofiapasoi/Desktop/btf');
##imshow(image);
##im=imnoise(image,'salt & pepper',0.02);
##imshow(im);

#noise_image = imnoise(image,'salt & pepper',0.1);
#noise_image = imnoise(image,'poisson');
#noise_image = imnoise(image,'gaussian');
#imshow(noise_image)
#gaussian_filter=fspecial ("gaussian",[3,3], 0.05);
#filter_2=filter2(gaussian_filter,noise_image,"same");
#convolution=conv2(gaussian_filter,noise_image);
#imshow(filter_2)
#imshow(convolution)

##################
##    PART 2    ##  
##################

##sobel=fspecial("sobel");
###fltr_horizontial=filter2(sobel, image, "same");
###fltr2_vertical=transpose(fltr_horizontial);
###imshow(fltr_horizontial)
###imshow(fltr2_vertical)
##
###[A,map] = imread('/home/sofiapasoi/Desktop/ask3/lena_color.gif');
##[A,map] = imread('/home/sofiapasoi/Desktop/ask3/geometric_image.GIF');
###imshow(A,map)
##
##Abw = map(A+1);
###imshow(Abw)
####
##fltr_horizontial=filter2(sobel, Abw, "same");
##fltr_vertical=transpose(fltr_horizontial);
#######imshow(fltr_horizontial)
####
#######imshow(fltr_vertical)
####h=abs(fltr_horizontial) + abs(fltr_vertical);
####imshow(h)
####
##im=edge(Abw);
##imshow(im)

##################
##    PART 3    ##  
##################

[B,map] = imread('/home/sofiapasoi/Desktop/ask3/twolines.jpg');
#[B,map] = imread('/home/sofiapasoi/Desktop/ask3/lena_color.gif');
#[B,map] = imread('/home/sofiapasoi/Desktop/ask3/geometric_image.GIF');
#Abw = map(B+1);
im2=edge(B);
imwrite (im2,"edges", "jpg")
#imshow(im2)
[x,y]=size(B);
for i=1:x
    for j=1:y    
      if(im2(i,j)==0) % kanw tin sygrisi
        im2(i,j)=1;
      else
        im2(i,j)=0;
      end
    end
end
imshow(im2)
###[HT, R] = hough(im2);
##[H,theta] = hough_line(im2);
##
##mesh(-90:90,theta, H)
