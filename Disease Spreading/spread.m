function agents = spread(agents,infectionProb)
% Spreads the disease from infected agents to susceptible agents with
% probability infectionProb.
    
    susceptibles = find([agents.State] == 1);
    positions = [agents(susceptibles).Position];
    infected = find([agents.State] == 2);
    for i = 1:numel(infected)
        if rand < infectionProb
            [row,newlyInfected] = find(and([[positions(1,:)]==agents(infected(i)).Position(1)],[[positions(2,:)]==agents(infected(i)).Position(2)]));
            [agents(susceptibles(newlyInfected)).State] = deal(2);
        end
    end
end