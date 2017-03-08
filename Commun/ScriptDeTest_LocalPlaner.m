%ScriptDeTest_LocalPlaner
clf;
addpath('Commun');
global nRobots
pointIni=rand(1,2*nRobots)
pointFin=rand(1,2*nRobots)
LocalPlaner(pointIni,pointFin)
%drawExemple(pointFin)