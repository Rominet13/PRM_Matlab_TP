global N nRobots rayons stepSize nodeInfo graph k

% Nombre de points
N=10000;
% Nombre de robots
nRobots=4;
% Rayons des robots (représentés par des disques)
rayons=[0.05 0.05 0.025 0.075];
stepSize=0.1;
% Matrice d'adjacence
graph=sparse(N,N);
%liste des points 8D
nodeInfo=zeros(N,nRobots*2);

% PRM exclusive : Nombre de plus proche voisin
k=30;