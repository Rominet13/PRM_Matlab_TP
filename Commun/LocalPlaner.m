% localPlaner
% Entrée : pointIni, pointFin (vecteur ligne de taille nRobot
% Sortie : liable (=1 si pas liable,  = 0 si liable) 
%
function [ liable ] = LocalPlaner(pointIni,pointFin)
global stepSize;
nbPoint=1/stepSize;
liable=0;
direction=pointFin-pointIni;
for i=1 : nbPoint
    Pt=pointIni+direction*i/nbPoint;
    %drawExemple(Pt)
    %collision=TestCollisionv1(Pt) Pour debug avec le sscript de test
    %pause
    if (TestCollisionv1(Pt)==1)
       liable=1;
       break
    end
end
