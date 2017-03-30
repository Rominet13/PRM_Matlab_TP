function [] = AdjMat()
% Remplit la matrice d'adjacence
% Regarde les k plus proches voisins d'un point de nodeInfo (les trouve avec knnsearch), utilise localPlaner pour vérifier si les 2 noeud sont joingnable en ligne droite. 
global nodeInfo
global N
global k
global graph
for i = 1 : N
    IDX=knnsearch(nodeInfo,nodeInfo(i,:),'k',k+1); % [IDX, D== indice et distance, le premier est le mêm
    for j = 2 : (k +1)
        if (LocalPlaner(nodeInfo(IDX(j),:),nodeInfo(i,:))==0)
            graph(i,IDX(j))=1;
        end
    end
end
end