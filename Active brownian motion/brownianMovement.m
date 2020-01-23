function [dx,dy,dphi] = brownianMovement(v,phi,Dt,Dr,dt)
    
    dx = (v.*cos(phi)+sqrt(2.*Dt)*randn)*dt;
    dy = (v.*sin(phi)+sqrt(2.*Dt)*randn)*dt;
    dphi = sqrt(2.*Dr)*randn*dt;
end