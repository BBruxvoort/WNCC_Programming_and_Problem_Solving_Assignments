image = input('Enter the filename of the image without quotes: ','s');
pic = imread(image);
imshow(pic)
for firstlayer = 1:size(pic,1)
    for secondlayer = 1:size(pic,2)
        if pic(firstlayer, secondlayer,1)<80||pic(firstlayer,secondlayer,2)>80||pic(firstlayer,secondlayer,3)>100
            grayscale = 0.2989 .* pic(firstlayer,secondlayer,1) + 0.5870 .* pic(firstlayer,secondlayer,2) + 0.1140 .* pic(firstlayer,secondlayer,3);
            pic(firstlayer,secondlayer,:) = [grayscale grayscale grayscale];
        end
    end
end
imshow(pic)
