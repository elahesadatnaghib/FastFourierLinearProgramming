clear all
close all

%Read data
f = dlmread('f.txt');
x = dlmread('x.txt');

phi = dlmread('phi.txt');
x_phi =dlmread('x_phi.txt');

fh = dlmread('fh.txt');
xi =dlmread('xi.txt');

[f_true, x_true, fhat_true, xi_true] = OneDsolution(x,xi);

figure(1)
subplot(2,1,1)
h = plot(x,f,x_true, f_true);
set(h(1), 'LineWidth',1.5)
xlim([min(x), max(x)])
ylim([0,1.1]);
format = 'Extremal function, n = %g, gamma = %d';
title(sprintf(format, length(f), fh(ceil(length(fh)/2))))
legend('Approximation', 'Solution')

figure(1)
subplot(2,1,2)
h = plot(xi,fh, xi_true, fhat_true);
set(h(1), 'LineWidth',1.5)
xlim([min(xi), max(xi)])
format = 'Fourier transform, n = %g';
title(sprintf(format, length(fh)))
legend('Approximation', 'Solution')

saveas(gcf, 'UnderSampOneD10.png')
savefig('UnderSampOneD10.fig')

%[normalized_dev_f, normalized_dev_fhat] = normalized_dev_1D(f,x,fh,xi)
