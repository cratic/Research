%%
clear all
clc
filename = 'wind speeds.xlsx';
sheet = 9;
xlRange = 'A2:A172';

[num,txt] = xlsread(filename,sheet,xlRange);
windspeeds=num;

clear vars filename sheet txt xlRange num sheet

filename = 'wind speeds.xlsx';
sheet = 9;
xlRange = 'K2:K172';

[num,txt] = xlsread(filename,sheet,xlRange);
power=num;

clear vars filename sheet txt xlRange num sheet

filename = 'wind speeds.xlsx';
sheet = 9;
xlRange = 'L2:L172';

[num,txt] = xlsread(filename,sheet,xlRange);
powerr=num;

clear vars filename sheet txt xlRange num sheet
% plot(windspeeds,cp)
% xlabel('Wind Speeds (m/s)')
% ylabel('Output Power (W)')
% ax = gca;
% ax.XGrid = 'on';
% ax.YGrid = 'on';
% grid minor
% set(gca,'FontSize',20);

%%
hold on all
plot(windspeeds,power,'k','LineWidth',2)
plot(windspeeds,powerr,'b','LineWidth',2)

x2 = [windspeeds ; fliplr(windspeeds)];
inBetween = [powerr , fliplr(power)];
fill(windspeeds, inBetween, 'k');

xlabel('Wind Speed (m/s)')
ylabel('Active Power (MW)')
ax = gca;
ax.XGrid = 'on';
ax.YGrid = 'on';
ax.XColor = 'k'; % Red
ax.YColor = 'k'; % Blue
grid minor
xlim([3 20])
ylim([0 20e6])
title('')
set(gca,'FontSize',14);
% legend('Power Curve','Accessible Power','Increase in Active Power','Location','best')
% saveas(gcf,'powerdata2','pdf')