function plotParticles(particles,cols,dimensions,bool)

    if bool
        for i = 1:numel(particles)
        scatter([particles(i).x],[particles(i).y],125,cols(i,:),'filled')
        hold on
        axis([0 dimensions(1) 0 dimensions(2)])
        end
        hold off
    else
        for i = 1:numel(particles)
            scatter([particles(i).x],[particles(i).y],15,cols(i,:),'filled')
            hold on
            axis([0 dimensions(1) 0 dimensions(2)])
        end
    end
end