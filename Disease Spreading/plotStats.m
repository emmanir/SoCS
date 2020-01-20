function plotStats(stats,states)
% Plots the number of agents in each state for each timestep

    cols = ['b','r','g','k'];
    for i = 1:states
        plot(0:(numel(stats(i,:))-1),stats(i,:),cols(i),'LineWidth',3.5)
        hold on
    end
    hold off
end