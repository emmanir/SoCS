function agents = initializeAgents(nbrOfAgentsPerState,dimensions)
% Initializes agents randomly on a grid, with dimensions specified in
% dimensions. nbrOfAgentsPerState gives the number of succeptible and
% infected agents. Returns an array of agents

    agents(1:nbrOfAgentsPerState(1)) = struct('Position',[0;0],'State',1);
    agents(nbrOfAgentsPerState(1)+1:sum(nbrOfAgentsPerState)) = struct('Position',[0;0],'State',2);
    for i = 1:sum(nbrOfAgentsPerState)
        agents(i).Position = [randi(dimensions(1)+1)-1;randi(dimensions(2)+1)-1];
    end
end