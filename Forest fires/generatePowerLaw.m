function data = generatePowerLaw(xmin,xmax,tau,nbrOfDataPoints)
    
    data = zeros(nbrOfDataPoints,1);
    for i = 1:nbrOfDataPoints
        while 1
            data(i) = xmin.*(1-rand).^(-1./(tau-1));
            if data(i) < xmax
                break;
            end
        end
    end
end