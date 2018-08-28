%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Plot Generalized Legendre Polynomials: LaguerreL(n,z)
%
%               Coded by Manuel Diaz, NHRI, 2018.08.28.
%                   Copyright (c) 2018, Manuel Diaz.
%                           All rights reserved.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1.1 Set plotting defaults
set(0,'defaultTextInterpreter','latex')
set(0,'DefaultTextFontName','Times',...
'DefaultTextFontSize',14,...
'DefaultAxesFontName','Times',...
'DefaultAxesFontSize',14,...
'DefaultLineLineWidth',1.5,...
'DefaultAxesBox','on',...
'defaultAxesLineWidth',1.5,...
'DefaultFigureColor','w',...
'DefaultLineMarkerSize',7.75)

% 1.2 list of options for lines
color=['c','b','g','r','y','m','k','w'];
lines={'-','--',':','-.','-.','none'};
mark=['s','+','o','x','v','none'];

% 1.3 set local marker size
ms = 5;

% 2. Set x range
x = -2:0.1:10; % Real range

% 3.1 Print axis lines
xl = line([-2 10],[0,0],'color','k');
yl = line([0 0],[-5,10],'color','k');
axis([-2,10,-5,10]); grid on;

% 3.2 Plot generilized Laguerre polynomials  
figure(1); hold on
for n=0:3
    for k=0:n
        plot(x,LaguerreL(n,k,x),[lines{k+1},color(n+1)])
    end
end

% 3.2 Set title, labels and legend
title('Generalized Laguerre Polynomials','FontSize',20); 
xlabel('$x$','FontSize',16,'Interpreter','LaTex'); 
ylabel('$L_n^k(x)$','FontSize',16,'Interpreter','LaTex');
hleg = legend({ ...
'n=0, k=0,','n=1, k=0,','n=1, k=1,','n=2, k=0,','n=2, k=1,', ...
'n=2, k=2,','n=3, k=0,','n=3, k=1,','n=3, k=2,','n=3, k=3,'}, ...
'location','BestOutside');
set(hleg,'FontAngle','italic','FontSize',14)

% 4. Export plot to *.eps figure
print('-depsc','LaguerrePlot.eps');