global N nRobots rayons stepSize nodeInfo graph k

% Nombre de points
N=1000;
% Rayons des robots (représentés par des disques)
rayons=[0.15 0.15 0.1 0.1 0.15 0.15 ]; % 0.009 0.03 0.03 0.03];
% Nombre de robots
nRobots=length(rayons);
stepSize=0.1;
% Matrice d'adjacence
graph=sparse(N,N);
%liste des points 8D
nodeInfo=zeros(N,nRobots*2);

% PRM exclusive : Nombre de plus proche voisin
k=20;