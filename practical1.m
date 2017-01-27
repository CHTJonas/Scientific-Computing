apple = dlmread('./Data for Practicals/apple.csv', ',', [1 0 168 1]);
ibm = dlmread('./Data for Practicals/ibm.csv', ',', [1 0 168 1]);
microsoft = dlmread('./Data for Practicals/microsoft.csv', ',', [1 0 168 1]);

hold on

plot(apple(:,1),apple(:,2),'-r','LineWidth',1)
plot(ibm(:,1),ibm(:,2),':b','LineWidth',2)
plot(microsoft(:,1),microsoft(:,2),'--g','LineWidth',2)

xlim([2001.832991,2015.75068500000])
ylim([0,950])

set(gca,'fontsize',16,'linewidth',1)

xlabel('Date / Years')
ylabel('Share Price / USD')

h = legend('Apple Share Price', 'IBM Share Price', 'Microsoft Share Price');
rect = [0.25 0.75 0.25 0.1];
set(h, 'Position', rect)

hold off

print -depsc2 practical1.eps

appleshares = 399 / apple(168,2);
applereturns = appleshares * apple(1,2)

ibmshares = 399 / ibm(168,2);
ibmreturns = ibmshares * ibm(1,2)

microsoftshares = 399 / microsoft(168,2);
microsoftreturns = microsoftshares * microsoft(1,2)