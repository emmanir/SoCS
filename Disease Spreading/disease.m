% Simulation of disease spreading

diffusionRate = 0.8;
infectionProb = 0.6;
recoverProb = 0.01;
deathProb = 0;
T = 1000;
dimensions = [100,100];
nbrOfAgents = 1000;
radius = 17;
states = 3+(deathProb ~= 0);

nbrOfEachState = zeros(states,T);

agents = initializeAgents(nbrOfAgents,dimensions,radius);


figure(1)
plotAgents(agents,dimensions)

for t = 1:T
    agents = moveAgents(agents,diffusionRate,dimensions);
    agents = spread(agents,infectionProb);
    agents = recover(agents,recoverProb,deathProb);
    
    nbrOfEachState(:,t) = getStats(agents,states);
    
    plotAgents(agents,dimensions)
    title(['Time step = ',num2str(t)],'FontSize',20)
    
    if numel(find([agents.State] == 2)) == 0
        break;
    end
    pause(0.01)
end
figure(2)
plotStats(nbrOfEachState,states)