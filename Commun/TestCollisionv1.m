% TestCollision fonction pour voir si 1 point de dimension
% nbRobot*2coordonnée (x,y) est valide (=ne comporte pas de collision)
% Entrée : point2nd[] //taille=2*nbRobot
% Variable Globale nécessaire : rayons[] 
% Sortie : collision int //=1 si collision => point non valide 
function [ collision ] = TestCollisionv1( point2nD)
global rayons
collision=0;
for i=1 : length(rayons)-1 %optim : lenght(rayons) à remplacer par le nb de robot qui est globale
    for j=i+1 : length(rayons) %optim : faire un pas de deux pour i et j
        if (sqrt((point2nD(2*i-1)-point2nD(2*j-1))^2+(point2nD(2*i)-point2nD(2*j))^2)< rayons(i)+rayons(j))
            collision=1;
            if (collision==1)
                break
            end
        end
    end
end
end

