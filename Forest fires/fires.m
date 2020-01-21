% Simulation of forest fires

% List of TODO's
% x initiallizeForest
% x lightning
% x burning
% x growing
% x plotForest

dimensions = [128,128];
growthProb = 0.01;
lightningProb = 0.7;
T = 100;
nbrOfTrees = zeros(T,1);
nbrOfFires = zeros(T,1);

treeGrid = initializeForest(dimensions,growthProb);
figure(1)
plotForest(treeGrid)
title('Time step: 0','FontSize',20)

for t = 1:T
    treeGrid = lightning(treeGrid,dimensions,lightningProb);
    [row,col] = find(treeGrid==2);
    if numel(row) == 1
        nbrOfTrees(t) = nnz(treeGrid);
        pos = [row,col];
        treeGrid = spreadFire(treeGrid,dimensions,pos,...
            zeros(dimensions(1),dimensions(2)));
        nbrOfFires(t) = numel(find(treeGrid==2));
        plotForest(treeGrid)
        title(['Time step: ',num2str(t)],'FontSize',20)
        pause(0.2);
        treeGrid = burnForest(treeGrid,dimensions);
    end
    treeGrid = growForest(treeGrid,dimensions,growthProb);
    plotForest(treeGrid)
    title(['Time step: ',num2str(t)],'FontSize',20)
    pause(0.2);
end

nbrOfTrees = nonzeros(nbrOfTrees);
nbrOfFires = nonzeros(nbrOfFires);

for t = 1:numel(nbrOfFires)
    
end



