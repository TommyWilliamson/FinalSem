% clear all
% n=1;
% minx=0.01;
% maxx=7;
% miny=0.01;
% maxy=20;
% step=2;
% i=1;
% j=1;
% for x=minx:step:maxx
%    for y=miny:step:maxy
%     tic
%     [ansc(i,j),gC]=EM1_c([x,y]);
%     GC1(i,j)=gC(1);
%     GC2(i,j)=gC(2);
%     toc
%     [ansG(i,j),gG]=EM1_c_G([x,y]);
%     GG1(i,j)=gG(1);
%     GG2(i,j)=gG(2);
%     disp(i)
%     if GC1(i,j)<=0
%         disp("gA1 is satisfied for"+num2str(x)+num2str(y))
% 
%         if GC2(i,j)<=0
%             disp("gA2 is satisfied for"+num2str(x)+num2str(y))
%             X(n)=x;
%             Y(n)=y;
%             Opt=ansc(i,j);
%             n=n+1;
%         end
%     end
%     j=j+1;
%    end
%       i=i+1;
% end
% surf(ansc,minxy:step:maxy)
% surf(ansc,minxy:step:maxy)
% Finding Minimum of Test2.p

% Declaring Function...
Funa= @(x) EM1_c(x);
Funb= @(x) EM1_c_G(x);

% Setting Up Problem...
problem.objective=Funa;
problem.x0=rand(1,2);
problem.solver='fmincon';
problem.lb=[0,0];
problem.ub=[7,20];
problem.options=optimoptions('fmincon');

mina=fmincon(problem);

problem.objective=Funb;
minb=fmincon(problem);
mina
minb

% answer 3.4909    1.4603