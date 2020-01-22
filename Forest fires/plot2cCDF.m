function plot2cCDF(simX,secondX,cCDF,secondY,line)

    loglog(simX,cCDF,'.','MarkerSize',10)
    hold on
    if line
        loglog(secondX,secondY)
    else
        loglog(secondX,secondY,'.','MarkerSize',10)
    end
    xlabel('Relative fire size','FontSize',20)
    ylabel('cCDF','FontSize',20)
    hold off
end