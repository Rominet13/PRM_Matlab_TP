function [ collision ] = TestCollision( point2nD, rayons)
collision=0;
for i=1 : 2 : 2*nRobots %optim : lenght(rayons) à remplacer par le nb de robot qui est globale
    for j=1 : 2 : 2*nRobots %optim : faire un pas de deux pour i et j  
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

