function treeGrid = initializeForest(dimensions,growthProb)
% initializes forest in a grid with dimensions, where growthProb sets the
% probability of a tree growing att each site

    treeGrid = zeros(dimensions);
    treeGrid = growForest(treeGrid,dimensions,growthProb);
end