% Fonction CreateNodeInfo : cette fonction va créer les positions initiales
% et positions finales des robots de manière aléatoire
function [] = CreateNodeInfo()
global nodeInfo
global N
global nRobots
n2Robots=2*nRobots;
for i=1:N
    collide = true;
    while (collide == true)
        x=rand(1,n2Robots);
        collide=TestCollisionv1(x);
    end
    nodeInfo(i,:)=x;
end