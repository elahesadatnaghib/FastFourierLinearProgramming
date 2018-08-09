clear all
close all

%Read data
f = dlmread('f.txt');
x = dlmread('x.txt');

%phi = dlmread('phi.txt');
%x_phi =dlmread('x_phi.txt');

fh = dlmread('fh.txt');
xi =dlmread('xi.txt');

fh_init = dlmread('fh_init.txt');
f_init = dlmread('f_init.txt');

%ftemp = length(f_init) - length(f)+1; fhtemp = length(fh_init)- length(fh)+1;

%f_init = f_init(ftemp:end);
%fh_init = fh_init(fhtemp:end);

subplot(1,2,1)
plot(x,[f,f_init])
xlabel('x')
ylabel('function')
subplot(1,2,2)
plot(xi,[fh,fh_init])
xlabel('xi')
ylabel('fourier transform of the function')

%[f_true, x_true, fhat_true, xi_true] = OneDsolution(x,xi);

%figure(1)
%subplot(2,1,1)
%h = plot(x,f,x_true, f_true);
%set(h(1), 'LineWidth',1.5)
%xlim([min(x), max(x)])
%ylim([0,1.1]);
%format = 'Extremal function, n = %g, gamma = %d';
%title(sprintf(format, length(f), fh(ceil(length(fh)/2))))
legend('numerical Approximation', 'Exact Solution')

%figure(1)
%subplot(2,1,2)
%h = plot(xi,fh, xi_true, fhat_true);
%set(h(1), 'LineWidth',1.5)
%xlim([min(xi), max(xi)])
%format = 'Fourier transform, n = %g';
%title(sprintf(format, length(fh)))
%legend('Approximation', 'Solution')

%saveas(gcf, 'UnderSampOneD10.png')
%savefig('UnderSampOneD10.fig')

%[normalized_dev_f, normalized_dev_fhat] = normalized_dev_1D(f,x,fh,xi)
