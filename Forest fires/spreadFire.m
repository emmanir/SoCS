function [treeGrid,done] = spreadFire(treeGrid,dimensions,pos,done)

    if done(pos(1),pos(2)) ~= 1
        treeGrid(pos(1),pos(2)) = 2;
        done(pos(1),pos(2)) = 1;
        if pos(1) < dimensions(1) && treeGrid(pos(1)+1,pos(2)) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [pos(1)+1,pos(2)],done);
        end
        if pos(1) > 2 && treeGrid(pos(1)-1,pos(2)) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [pos(1)-1,pos(2)],done);
        end
        if pos(2) < dimensions(2) && treeGrid(pos(1),pos(2)+1) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [pos(1),pos(2)+1],done);
        end
        if pos(2) > 2 && treeGrid(pos(1),pos(2)-1) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [pos(1),pos(2)-1],done);
        end
        if pos(1) == dimensions(1) && treeGrid(1,pos(2)) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [1,pos(2)],done);
        end
        if pos(1) == 1 && treeGrid(dimensions(1),pos(2)) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [dimensions(1),pos(2)],done);
        end
        if pos(2) == dimensions(2) && treeGrid(pos(1),1) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [pos(1),1],done);
        end
        if pos(2) == 1 && treeGrid(pos(1),dimensions(2)) == 1
            [treeGrid,done] = spreadFire(treeGrid,dimensions,...
                [pos(1),dimensions(2)],done);
        end
    end
end