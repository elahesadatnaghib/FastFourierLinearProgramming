%clear all
%close all

%Read data
f2D  = dlmread('f2D.txt');
fh2D = dlmread('fh2D.txt');

x2D      = dlmread('x2D.txt');
xi2D     = dlmread('xi2D.txt');

x2  = x2D;  x1  = x2D';
xi2 = xi2D; xi1 = xi2D';


figure(2)
subplot(1,2,1)
%surf(x1,x2,f2D,ones(length(x2),length(x2))* 0.5)
surf(x1,x2,f2D)
xlim([0, max(max(x1))])
ylim([0, max(max(x2))])
format = 'Extremal function, n = %g';
title(sprintf(format, length(f2D)^2))

subplot(1,2,2)
%surf(xi1,xi2,fh2D,ones(length(xi2),length(xi2))* 0.5)
surf(xi1,xi2,fh2D)
format = 'Fourier transform, m = %g';
title(sprintf(format, length(fh2D)^2))

%[normalized_dev_f, normalized_dev_fhat] = normalized_dev_2D(f2D,x2D,fh2D,xi2D);


