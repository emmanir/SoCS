function plotForest(treeGrid)
    
    cols = [0,1,0;1,0.647,0]; % 0.647
    [treeRow,treeCol] = find(treeGrid==1);
    [fireRow,fireCol] = find(treeGrid==2);
    scatter([treeRow],[treeCol],'filled','g')
    hold on
    scatter([fireRow],[fireCol],[],[1,0.549,0],'filled')
    hold off
end