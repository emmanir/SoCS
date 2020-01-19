function agents = moveAgents(agents,diffusionRate,dimensions)
    % Moves agents randomly on a grid layout using von Neumann
    % neighbourhood and periodic boundary conditions. Input argument agents
    % define a list of structs with agents, holding positions. The
    % diffusionRate sets the probability of movement for each agent. Input
    % argument dimensions gives dimensions of the area.
    
    for i=1:numel(agents)
        if rand < diffusionRate
            direction = randi(4);
            switch direction
                case 1
                    % move right
                    if agents(i).Position(1) == dimensions(1)
                        agents(i).Position(1) = 0;
                    else
                        agents(i).Position(1) = agents(i).Position(1)+1;
                    end
                case 2
                    % move left
                    if agents(i).Position(1) == 0
                        agents(i).Position(1) = dimensions(1);
                    else
                        agents(i).Position(1) = agents(i).Position(1)-1;
                    end
                case 3
                    % move up
                    if agents(i).Position(2) == dimensions(2)
                        agents(i).Position(2) = 0;
                    else
                        agents(i).Position(2) = agents(i).Position(2)+1;
                    end
                case 4
                    % move down
                    if agents(i).Position(2) == 0
                        agents(i).Position(2) = dimensions(2);
                    else
                        agents(i).Position(2) = agents(i).Position(2)-1;
                    end
            end
        end
    end
end