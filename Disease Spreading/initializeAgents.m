function agents = initializeAgents(nbrOfAgents,dimensions,radius)
% Initializes agents randomly on a grid, with dimensions specified in
% dimensions. nbrOfAgentsPerState gives the number of succeptible and
% infected agents. Returns an array of agents.

    agents(1:nbrOfAgents) = struct('Position',[0;0],'State',1);
    %agents(nbrOfAgentsPerState(1)+1:sum(nbrOfAgentsPerState)) = struct('Position',[0;0],'State',2);
    for i = 1:nbrOfAgents
        agents(i).Position = [randi(dimensions(1)+1)-1;randi(dimensions(2)+1)-1];
        dist = norm([agents(i).Position(1)-(dimensions(1)/2),agents(i).Position(2)-(dimensions(2)/2)]);
        if dist < radius
            agents(i).State = 2;
        end
    end
end