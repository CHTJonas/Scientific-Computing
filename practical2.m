% assuming that cambridge.dat has already been imported as column vectors

% create the data
t = yyyy + (mm - 1) / 12;
tavg = (tmax + tmin) / 2;

% setup the plot and axes
figure;
plot(t,tavg,'-r','LineWidth',1)
xlim([1961,2010])
ylim([-3,22])
set(gca,'fontsize',16,'linewidth',1)
xlabel('Date / Years')
ylabel('Average Temperature / Degrees Celsius')
hold on

% perform a minimisation
b0 = [10,1,1,1];
b = fminsearch(@(b) slopingsine(b,(t-1961),tavg), b0);
yfit = b(1) + b(2)*(t-1961) + b(3)*sin(2*pi*t+b(4));
plot(t,yfit,'--b','LineWidth',1)
hold off
print -depsc2 practical2-fitting.eps

% report back the parameters
b
tempRise = b(2) * (2010-1961)

% do the histogram
figure;
hist(rain,[5:10:170])
xlim([0,170])
ylim([0,100])
set(gca,'fontsize',16,'linewidth',1)
xlabel('Rainfall / mm')
ylabel('Number of Months')
print -depsc2 practical2-histogram.eps