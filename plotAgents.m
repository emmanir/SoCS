function plotAgents(agents,dimensions)
% Plots the agents in a figure with dimensions, with a color representing
% each state
    
    cols = ['b','r','g','k'];
    for i = 1:4
        indexes = find([agents.State] == i);
        if numel(indexes) > 0
            pos = [agents(indexes).Position];
            scatter(pos(1,:),pos(2,:),'filled',cols(i))
            hold on
        end
    end
    axis([0,dimensions(1),0,dimensions(2)])
    hold off
end