% Simulating brownian motion

Dt = 1;
Dr = 0.5;
dt = 0.1;
T = round(10./dt);

p = initializeParticles(4,[0,1,2,3],[100,100]);
plotParticles(p,[1,0,0;0,1,0;0,0,1;0,0,0],[100,100],false);

for t = 1:T
    for i = 1:numel(p)
        [dx,dy,dphi] = brownianMovement(p(i).Velocity,p(i).phi,Dt,Dr,dt);
        p(i).x = p(i).x+dx; p(i).y = p(i).y+dy; p(i).phi = p(i).phi+dphi;
    end
    plotParticles(p,[1,0,0;0,1,0;0,0,1;0,0,0],[100,100],false);
    pause(0.1)
end
plotParticles(p,[1,0,0;0,1,0;0,0,1;0,0,0],[100,100],true);
