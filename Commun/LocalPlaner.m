% localPlaner
% Entrée : pointIni, pointFin (vecteur ligne de taille nRobot
% Sortie : liable (=1 si pas liable,  = 0 si liable)
function [ liable ] = LocalPlaner(pointIni,pointFin)
global stepSize;
direction=pointFin-pointIni;
nbPoint=floor(norm(direction)/stepSize) ; %1/stepSize;
liable=0;
for i=1 : nbPoint
    Pt=pointIni+direction*i/nbPoint;
    %drawExemple(Pt) Pour debug avec le sscript de test
    %collision=TestCollisionv1(Pt) 
    %pause
    if (TestCollisionv1(Pt)==1)
        liable=1;
        break
    end
end
