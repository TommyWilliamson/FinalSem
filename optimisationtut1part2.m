clear all
n=1;
for i=-100:step:100
   for j=-100:100
    ansa(i,j)=Test2a([i,j]);
   end
end
plot(ansa)
hold on
plot(ansb)
% Finding Minimum of Test2.p

% Declaring Function...
Funa= @(x) Test2a(x);
Funb= @(x) Test2b(x);

% Setting Up Problem...
problem.objective=Funa;
problem.x0=rand(1,2);
problem.solver='fmincon';
problem.options=optimoptions('fmincon');

mina=fmincon(problem);

problem.objective=Funb;
minb=fmincon(problem);
mina
minb