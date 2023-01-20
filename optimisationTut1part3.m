clear all

% Checking for each dimension
for dim=1:6
    n=1;
    for i=-1:0.0001:1
        input=ones(1,6);
        input(dim)=i;
        ans(n)=Test3(input);
        n=n+1;
    end
    figure(dim)
    plot(ans)
    legend(num2str(dim))
end

% Finding Minimum of Test3.p

% Declaring Function...
Fun= @(x) Test3(x);

% Setting Up Problem...
problem.objective=Fun;
problem.x0=rand(1,6);
problem.solver='fmincon';
problem.options=optimoptions('fmincon');
for i=1:10
min=fmincon(problem);
min
end