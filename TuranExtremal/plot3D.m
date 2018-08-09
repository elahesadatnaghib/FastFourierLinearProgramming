%clear all
%close all

%Read data
xi_fhat3D = dlmread('xi_fhat3D.txt');
ri = sqrt(xi_fhat3D(:,1).^2 + xi_fhat3D(:,2).^2 + xi_fhat3D(:,3).^2);
fhat = xi_fhat3D(:,4);
[ri,I] = sort(ri);
fhat = fhat(I);

x_f3D = dlmread('x_f3D.txt');
r = sqrt(x_f3D(:,1).^2 + x_f3D(:,2).^2 + x_f3D(:,3).^2);
f = x_f3D(:,4);
[r,I] = sort(r);
f = f(I);


% vs r
figure(1)
subplot(2,1,1)
plot(ri, fhat, 'LineWidth',1)
title('F^{hat} vs r(x), m=10, n=20, K:|x| <1')

subplot(2,1,2)
plot(r, f, 'LineWidth',1)
title('F vs r(x), m=10, n=20, K:|x| <1')

% slices
pick_const_axis = 1;
pick_slice      = 0;
fhat_slice = 
figure(2)
subplot(3,2,1)
surface(xi_fhat3D(:,1), fhat)
subplot(3,2,2)
plot(x_f3D(:,1), f)
