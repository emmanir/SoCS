function plotStats(stats,states)
% Plots the number of agents in each state for each timestep

    cols = ['b','r','g','k'];
    for i = 1:states
        plot(1:numel(stats(i,:)),stats(i,:),cols(i),'LineWidth',3.5)
        hold on
    end
    hold off
end