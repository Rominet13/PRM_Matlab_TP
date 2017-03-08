function [] = AdjMat()
%Remplit la matrice d'adjacence
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