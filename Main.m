global N nRobots rayons stepSize nodeInfo graph

% Nombre de points
N=10000;
% Nombre de robots
nRobots=4;
% Rayons des robots (représentés par des disques)
rayons=[0.05 0.05 0.025 0.075];
stepSize=0.001;
nodeInfo=zeros(N,nRobots*2);
% Matrice d'adjacence
graph=sparse(N,N);

%Generation aléatoire de nbpoint points en dimension 8
echantillonage=[];
for i=1 : N
    new_point=[rand,rand,rand,rand,rand,rand,rand,rand];
    echantillonage=[echantillonage;new_point];
end