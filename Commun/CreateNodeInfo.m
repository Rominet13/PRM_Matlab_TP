% Fonction CreateNodeInfo : cette fonction va créer les positions initiales
% et positions finales des robots de manière aléatoire
function [] = CreateNodeInfo()
global nodeInfo
global N

for i=1:N
    collide = true;
    while (collide == true)
        x=rand(1,8);
        collide=TestCollisionv1(x);
    end
    nodeInfo(i,:)=x;
end