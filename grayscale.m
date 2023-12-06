function grayscale(filename)

RGB_image = imread(filename);
RGB_image = double(RGB_image);
% split rgb channel
R = RGB_image(:,:,1);
G = RGB_image(:,:,2);
B = RGB_image(:,:,3);
% use weight, self define
gray = 0.299 * R + 0.587 * G + 0.114 * B;
% gray to rgb, self define
rgb = zeros(size(gray,1), size(gray,2), 3);
rgb(:,:,1) = gray;
rgb(:,:,2) = 0.5*gray;
rgb(:,:,3) = 0.8*gray;
% display
figure;
subplot(1, 3, 1); imshow(mat2gray(RGB_image)); title('origin rgb');
subplot(1, 3, 2); imshow(mat2gray(gray)); title('gray');
subplot(1, 3, 3); imshow(mat2gray(rgb)); title('gray to rgb');