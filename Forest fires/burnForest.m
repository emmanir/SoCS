function treeGrid = burnForest(treeGrid,dimensions)
    
    for row = 1:dimensions(1)
        for col = 1:dimensions(2)
            if treeGrid(row,col) == 2
                treeGrid(row,col) = 0;
            end
        end
    end
end