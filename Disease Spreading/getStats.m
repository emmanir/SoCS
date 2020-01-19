function nbrs = getStats(agents,states)
    nbrs = zeros(states,1);
    for i = 1:states
        nbrs(i) = numel(find([agents.State] == i));
    end
end