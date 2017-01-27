% Establish parameters (so they can be easily changed)
ti  = -10;                % Initial time
tf  =  10;                % Final time
nt  =  50;                % Number of time steps

% Initiate arrays
t = linspace(ti,tf,nt);
[x, y] = meshgrid(t,t);

% Create surf plot for px orbital
figure;
z = px(x,y,0);
surf(x,y,z)
xlim([-10,10])
ylim([-10,10])
zlim([-0.4,0.4])
xlabel('x')
ylabel('y')
zlabel('p_x')
set(gca,'fontsize',16,'linewidth',1)

% Print the plot
print -deps2c px-surf.eps

% Create surf plot for dxy orbital
figure;
z = dxy(x,y,0);
surf(x,y,z)
xlim([-10,10])
ylim([-10,10])
zlim([-0.3,0.3])
xlabel('x')
ylabel('y')
zlabel('d_x_y')
set(gca,'fontsize',16,'linewidth',1)

% Print the plot
print -deps2c dxy-surf.eps

% Create contour plot for px orbital
figure;
z = px(x,y,0);
contour(x,y,z)
xlim([-10,10])
ylim([-10,10])
zlim([-0.3,0.3])
xlabel('x')
ylabel('y')
zlabel('p_x')
set(gca,'fontsize',16,'linewidth',1)

% Print the plot
print -deps2c px-contour.eps

% Create contour plot for dxy orbital
figure;
z = dxy(x,y,0);
contour(x,y,z)
xlim([-10,10])
ylim([-10,10])
zlim([-0.3,0.3])
xlabel('x')
ylabel('y')
zlabel('d_x_y')
set(gca,'fontsize',16,'linewidth',1)

% Print the plot
print -deps2c dxy-contour.eps

% Reinitiate parameters & arrays since greater degree of accuracy is now needed
ti  = -10;                % Initial time
tf  =  10;                % Final time
nt  =  400;               % Number of time steps
t = linspace(ti,tf,nt);

% Create x=y diagonal plot for dxy orbital
figure;
z = dxy_diag(t);
plot(t,z,'-r','LineWidth',1)
xlim([-10,10])
ylim([0,0.3])
xlabel('x = y')
ylabel('d_x_y');
set(gca,'fontsize',16,'linewidth',1)

% Print the plot
print -deps2c dxy-xequalsy.eps

% Create x=y diagonal derivative plot for dxy orbital
figure;
h = 0.05;
z = dxy_diag(t);
dzdt = diff(z)/h;
plot(t(1:399),dzdt,'-b','LineWidth',1)
xlim([-10,10])
ylim([-0.4,0.4])
xlabel('x = y')
ylabel('Derivative of d_x_y');
set(gca,'fontsize',16,'linewidth',1)

% Print the plot
print -deps2c dxy-xequalsy-derivative.eps