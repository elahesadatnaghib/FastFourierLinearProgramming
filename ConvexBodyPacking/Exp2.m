% this script Demonstrates that the effect of boundry constraint vs absent
% of boundary constraints in l_1 ball problem

% 2D
t_d_pix = [81, 169, 289, 441, 841,1681, 2809, 3721, 5329, 7921, 10201]; % number of time domain pixels
f_d_pix = [25, 49, 81, 121, 225, 441, 729, 961, 1369, 2025, 2601]; % number of frequency domain pixels
B_s     = [2, 3, 4, 5, 7, 10, 13, 15, 18, 22, 25]; % size of the big box in positive orthant

gamma_with_b_cstr      = [2, 2, 2, 2, 2, 2, 2, 2, 1.999988, 1.999952, 1.999944]; % deviation of function from known solution
run_t_with_b_cstr      = [0.002304, 0.00599,0.012924, 0.024959, 0.088715, 0.278362, 1.06796,2.55366, 7.82088, 23.2763, 54.226]; % run time
n_iter_with_b_cstr     = [14, 16, 17, 20, 24, 20, 22, 23, 25, 24, 25, 29]; % number of iterations
        
gamma_without_b_cstr   = [1.223769, 1.411633, 1.554924, 1.612544, 1.696604, 1.767272, 1.808557, 1.827749, 1.849357, 1.870113, 1.881830]; % deviation of Fourier transform from known solution
run_t_without_b_cstr   = [0.003392, 0.006935, 0.019609, 0.032193, 0.094746, 0.415089,1.47442, 2.95817, 8.92191, 32.6927, 77.955]; % run time
n_iter_without_b_cstr  = [17, 16, 22, 22, 22, 25, 26, 26, 28, 27,28, 28]; % number of iterations


        
subplot(2,1,1)        
plot(t_d_pix, gamma_with_b_cstr, t_d_pix, gamma_without_b_cstr)
xlabel('time domain resoluion'); ylabel('gamma: optimal value')
ylim([0, 2.1])
title('With and without boundary constraints')
legend('with', 'without')
subplot(2,1,2)        
plot(t_d_pix, run_t_with_b_cstr, t_d_pix, run_t_without_b_cstr)
xlabel('time domain resoluion'); ylabel('Total elapsed time (sec)')
title('With and without boundary constraints')
legend('with', 'without')


% 3D l1_ball
B_s     = [2, 3, 4, 5, 7, 8, 9, 10, 11]; % size of the big box in positive orthant
t_d_pix = (B_s*2+1).^3; % number of time domain pixels
f_d_pix = (B_s*4+1).^3; % number of frequency domain pixels

gamma_with_b_cstr      = [5.382723, 5.116974, 5.790693, 5.849230, 5.852954, 5.923571, 5.944663]; % deviation of function from known solution
run_t_with_b_cstr      = [0.014943, 0.088022, 0.335273, 1.56235, 46.4335, 417.418, 3522.37]; % run time
n_iter_with_b_cstr     = [17, 26, 27, 28, 41, 42, 46]; % number of iterations
        
gamma_without_b_cstr   = [2.543722, 3.415254, 3.931161, 4.672146, 4.747294, 5.004120, 5.166415]; % deviation of Fourier transform from known solution
run_t_without_b_cstr   = [0.024077, 0.109706, 0.566731, 2.87545, 49.413, 641.448, 4193.19]; % run time
n_iter_without_b_cstr  = [20, 23, 28, 33, 35, 38, 42]; % number of iterations
        
