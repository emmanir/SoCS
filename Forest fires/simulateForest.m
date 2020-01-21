function treeGrid = simulateForest(dimensions,nbrOfTrees)
    
    treeGrid = zeros(dimensions);
    density = nbrOfTrees./(dimensions(1).*dimensions(2));
    for row = 1:dimensions(1)
        for col = 1:dimensions(2)
            if rand < density
                treeGrid(row,col) = 1;
            end
        end
    end
    while numel(find(treeGrid==2)) == 0
        treeGrid = lightning(treeGrid,dimensions,1);
    end
end