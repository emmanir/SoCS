% Simulation of forest fires, analysis
clc;
N = 2.^(3:9);
H = zeros(numel(N),1);
growthProb = 0.01;
lightningProb = 0.5;
T = 1000;
Tau = zeros(numel(N),1);

for n = 1:numel(N)
    H(n) = 1./N(n);
    dimensions = [N(n),N(n)];
    nbrOfTrees = zeros(T,1);
    sizeOfFires = zeros(T,1);
    treeGrid = initializeForest(dimensions,growthProb);
    for t = 1:T
        treeGrid = lightning(treeGrid,dimensions,lightningProb);
        [row,col] = find(treeGrid==2);
        if numel(row) == 1
            nbrOfTrees(t) = nnz(treeGrid);
            pos = [row,col];
            treeGrid = spreadFire(treeGrid,dimensions,pos,...
                zeros(dimensions(1),dimensions(2)));
            sizeOfFires(t) = numel(find(treeGrid==2));
            treeGrid = burnForest(treeGrid,dimensions);
        end
        treeGrid = growForest(treeGrid,dimensions,growthProb);
    end
    
    nbrOfTrees = nonzeros(nbrOfTrees);
    sizeOfFires = nonzeros(sizeOfFires);


    relFireSize = sizeOfFires./(dimensions(1).*dimensions(2));

    relFireSize = sort(relFireSize,'descend');

    cCDF = (1:numel(relFireSize))./numel(relFireSize);
    
    linFit = fitlm(log(relFireSize),log(cCDF),'linear');

    beta = linFit.Coefficients.Estimate(1);
    k = linFit.Coefficients.Estimate(2);
    tau = 1-k;
    Tau(n) = tau;
    disp(['Done with: ',num2str(N(n))])
end

f = createFit(H,Tau);

y =@(x) f.c+f.a.*x.^f.b;
x = linspace(0,1.25*max(H));

figure(5)
plot(H,Tau,'.','MarkerSize',10)
hold on
plot(x,y(x))
grid on
legend('Tau vs. 1/N', 'Fit from a(x^b)+c', 'Location', 'SouthEast', 'FontSize',15);
xlabel( '1/N', 'FontSize',20 );
ylabel( 'Tau', 'FontSize',20 );
hold off

