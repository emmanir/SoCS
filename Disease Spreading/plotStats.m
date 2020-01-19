function plotStats(stats,states)
    cols = ['b','r','g','k'];
    for i = 1:states
        plot(1:numel(stats(i,:)),stats(i,:),cols(i),'LineWidth',3.5)
        hold on
    end
    hold off
end