% TestCollision fonction pour voir si 1 point de dimension
% nbRobot*2coordonnée (x,y) est valide (=ne comporte pas de collision)
% Entrée : point2nd[] //taille=2*nbRobot
% Variable Globale nécessaire : rayons[] //taille=2*nbRobot
% Sortie : collision int //=1 si collision => point non valide  
function [ collision ] = TestCollision( point2nD, rayons)
collision=0;
global nRobots
for i=1 : 2 : 2*nRobots 
    for j=1 : 2 : 2*nRobots   
        if i~=j
            if (sqrt((point2nD(i)-point2nD(j))^2+(point2nD(i+1)-point2nD(j+1))^2)<rayons(i)+rayons(j))
                collision=1;
                if (collision==1)
                    break
                end
            end
        end
    end
end
end