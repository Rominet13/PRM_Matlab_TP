clear all;
close all;
addpath('Commun');
addpath('Astar');
globaleVariables
Setup
AdjMat()
[path,cost] = astar( 1 , 2 , graph , nodeInfo , @norm );
taille=size(path);
for i = 1 : taille(2)-1
    pointIni=nodeInfo(path(i),:);
    pointFin=nodeInfo(path(i+1),:);
    nbPoint=1/stepSize;
    direction=pointFin-pointIni;
    for j=1 : nbPoint
       Pt=pointIni+direction*j/nbPoint;
       drawExemple(Pt)
       pause
    end
end
disp('fini!');
pause
save('sauvegarde/test.txt','-v1.0') 