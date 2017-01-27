dm = 3.;
m = 1.;
GMm = 10.;
dt = 0.01;
nt = 30001;
ti = 0.;
tf =ti+(nt-1)*dt;

% Initiate arrays
t = linspace(ti,tf,nt);
x = zeros(dm,nt);
v = zeros(dm,nt);
a = zeros(dm,nt);
% Initial conditions (the dimensions must match dm)
x0 = [10.; 10.; 10.];
v0 = [.3; -.3; 3.];
% Initiate the algorithm
x(:,1) = x0;
v(:,1) = v0;
a(:,1) = gravforce(x(:,it),[1;2;3],GMm)/m + gravforce(x(:,it),[3;4;5],GMm)/m;
for it = 2:nt
    x(:,it) = x(:,it-1) + v(:,it-1)*dt + a(:,it-1)/2 * dt^2;
    a(:,it) = gravforce(x(:,it),[1;2;3],GMm)/m + gravforce(x(:,it),[3;4;5],GMm)/m;
    v(:,it) = v(:,it-1) + [a(:,it) + a(:,it-1)]/2 * dt;
end

plot3(x(1,:),x(2,:),x(3,:))
set(gca,'xlim',[-5 15])
set(gca,'ylim',[-5 15])
set(gca,'ticklength',[0.02,0.])
set(gca,'fontsize',16,'linewidth',1)
set(gca,'XTick',[0:5:10])
set(gca,'YTick',[0:5:10])
hold on
sun=plot(0,0,'ro');
set(sun,'MarkerSize',10)
set(sun,'MarkerFaceColor','r')
xlabel('x'); ylabel('y')
% Plot it
% plot sun
% Print the plot
set(gcf,'PaperPosition',[1 1 13 12]) % last 2 num def size print -deps2c orbit.eps
% print it to file
% end program