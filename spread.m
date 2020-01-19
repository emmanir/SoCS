function agents = spread(agents,infectionProb)
% Spreads the disease from infected agents to susceptible agents with
% probability infectionProb.
    
    susceptibles = find([agents.State] == 1);
    infected = find([agents.State] == 2);
    for i = 1:numel(infected)
        if rand < infectionProb
            newlyInfected = find([agents(susceptibles).Position]==agents(infected(i)).Position);
            [agents(susceptibles(newlyInfected)).State] = 2;
        end
    end
end