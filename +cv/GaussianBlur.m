%GAUSSIANBLUR  Smoothes an image using a Gaussian filter
%
%   dst = cv.GaussianBlur(src)
%   dst = cv.GaussianBlur(src, 'KSize', [5,5], ...)
%
% The function convolves the source image with the specified Gaussian kernel.
%
% Input:
%     src: Source image.
% Output:
%     dst: Destination image of the same size and type as src.
% Options:
%     'KSize': Gaussian kernel size. ksize.width and ksize.height can differ
%              but they both must be positive and odd. Or, they can be zero’s
%              and then they are computed from sigma*. default [5,5]
%	  'SigmaX': Gaussian kernel standard deviation in X direction. default 0
%	  'SigmaY': Gaussian kernel standard deviation in Y direction. If sigmaY is
%               zero, it is set to be equal to sigmaX . If both sigmas are
%               zeros, they are computed from ksize.width and ksize.height,
%               respectively. See getGaussianKernel() for details. To fully
%               control the result regardless of possible future modifications
%               of all this semantics, it is recommended to specify all of
%               ksize, sigmaX, and sigmaY. default 0
%     'BorderType': Pixel extrapolation method. default 'Default'
%