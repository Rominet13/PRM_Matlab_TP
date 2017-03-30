function [ output_args ] = drawInitFin()
% drawInitFin 
% trace un I et D sur les points initiaux et finaux

global nodeInfo nRobots

% colors = [ [1 0.7 0.7] ; [0.6 1 0.6] ; [0.7 0.7 1] ; [1 0.7 1] ] ;
% dimColors = [ [1 0.95 0.95] ; [0.95 1 0.95] ; [0.95 0.95 1] ; [1 0.95 1] ] ;
% dimEdges = [ [1 0.8 0.8] ; [0.8 1 0.8] ; [0.8 0.8 1] ; [1 0.8 1] ] ;

for i = 1 : 2 : 2*nRobots
    txtI = {'\leftarrow D Robot',i};
    txtF = {'\leftarrow F Robot',i};
    text(nodeInfo(1,i),nodeInfo(1,i+1),txtI);
    text(nodeInfo(2,i),nodeInfo(2,i+1),txtF);
end
% 
% for i = 1 : length(rayons) ,
%         rectangle( ...
%             'Position',[q(2*i-1)-rayons(i) q(2*i)-rayons(i) ...
%             2*rayons(i) 2*rayons(i)], ...
%             'Curvature',[1 1], 'FaceColor',colors(i,:) , ...
%             'EdgeColor',colors(i,:) ) ;
% end
%     %axis(box);
%     axis('equal');

end

