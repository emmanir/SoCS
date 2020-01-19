function agents = recover(agents,recoverProb,deathProb)
% Each agent can recover with probability recoverProb or die with
% probability deathProb.

    infected = find([agents.State] == 2);
    for i = 1:numel(infected)
        prob = rand;
        if prob < recoverProb
            agents(infected(i)).State = 3;
        elseif prob < recoverProb+deathProb && prob > recoverProb
            agents(infected(i)).State = 4;
        end
    end
end