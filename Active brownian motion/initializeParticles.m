function particles = initializeParticles(nbrOfParticles,velocities,dimensions)

    particles(1:nbrOfParticles) = struct('x',0,'y',0,'phi',0,'Velocity',0);
    for i = 1:nbrOfParticles
        particles(i).x = dimensions(1).*rand;
        particles(i).y = dimensions(2).*rand;
        particles(i).phi = 2.*pi.*rand;
        particles(i).Velocity = velocities(i);
    end
end