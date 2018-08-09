
% Find the packing construction for 2D solution
clear all

f2D = dlmread('f2D.txt');

x2D = dlmread('x2D.txt');
x1 = x2D'; x2 = x2D;

f2D = smooth(f2D,15);
f_vec = reshape(f2D, [], 1);
x1_vec= reshape(x1, [], 1);
x2_vec= reshape(x2, [], 1);

[sort_f_vec, sort_index] = sort(f_vec);

n_packing = sum(f_vec == 0);

% Truncate sorted values

trunc_f_vec = sort_f_vec(1:n_packing);
trunc_sort_index = sort_index(1:n_packing);

% extract packing
x1_packing = x1_vec(trunc_sort_index);
x2_packing =  x2_vec(trunc_sort_index);



% Known packing
r = 1;
B_s= max(x1_vec);
%create centers:
%first layer
x = -B_s:2*r:B_s;
y = zeros(1, length(x));

delta_x = 2*r*sin(30*pi/180);
delta_y = 2*r*cos(30*pi/180);

i = 0;
while max(y) < B_s
    x = [x, x + delta_x* (-1)^i];
    y = [y, y + delta_y];
    i = i + 1;
end


% rotation
theta = 45 * pi/ 180;
x_rot =  x * cos(theta) + y * sin(theta);
y_rot = -x * sin(theta) + y * cos(theta);

% from center to edge
x_edge = x_rot - r;
y_edge = y_rot - r;

for i = 1:length(x)
rectangle('Position',[x_edge(i),y_edge(i),2*r,2*r],...
  'Curvature',[1,1], 'FaceColor','r', 'LineWidth', 2)
axis square;
end


% plot packing
hold on

plot(x1_packing,x2_packing, '*', 'MarkerSize',4, 'MarkerFaceColor', 'k')

xlim([0,B_s])

ylim([0,B_s])

% plot centers
hold on
plot(x_rot,y_rot, 'D', 'MarkerFaceColor', 'k','MarkerSize',4)