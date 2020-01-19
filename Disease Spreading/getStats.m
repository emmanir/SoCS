function nbrs = getStats(agents,states)
% Returns a column vector with the number of agents in each state.

    nbrs = zeros(states,1);
    for i = 1:states
        nbrs(i) = numel(find([agents.State] == i));
    end
end