function treeGrid = growForest(treeGrid,dimensions,growthProb)

    for row = 1:dimensions(1)
        for col = 1:dimensions(2)
            if treeGrid(row,col) ~= 1 && rand < growthProb
                treeGrid(row,col) = 1;
            end
        end
    end
end