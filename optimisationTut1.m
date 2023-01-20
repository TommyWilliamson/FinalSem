% Finding Minimum of Test1.p

% Declaring Function...
Fun= @(x) Test1(x);

% Setting Up Problem...
problem.objective=Fun;
problem.x0=0;
problem.solver='fmincon';
problem.options=optimoptions('fmincon');

min=fmincon(problem);