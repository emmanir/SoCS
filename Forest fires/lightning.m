function treeGrid = lightning(treeGrid,dimensions,lightningProb)

    if rand < lightningProb
        row = randi(dimensions(1));
        col = randi(dimensions(2));
        if treeGrid(row,col) == 1
            treeGrid(row,col) = 2;
        end
    end
end