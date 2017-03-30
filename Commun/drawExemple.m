function [ output_args ] = drawExemple( q )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

global nodeInfo rayons nRobots

% chargement des couleurs fixe pour 4 robots
%colors = [ [1 0.7 0.7] ; [0.6 1 0.6] ; [0.7 0.7 1] ; [1 0.7 1] ] ;
%dimColors = [ [1 0.95 0.95] ; [0.95 1 0.95] ; [0.95 0.95 1] ; [1 0.95 1] ] ;
%dimEdges = [ [1 0.8 0.8] ; [0.8 1 0.8] ; [0.8 0.8 1] ; [1 0.8 1] ] ;

% chargement des couleurs aléatoirement, méthode valable pour autant de
% robots que voulus
colors=[];
dimColors=[];
dimEdges=[];
for i = 1 : nRobots
colors=cat(1,colors,nodeInfo(i,1:3))
dimColors=cat(1,dimColors,nodeInfo(i,1:3))
dimEdges=cat(1,dimEdges,nodeInfo(i,1:3))
end

for i = 1 : length(rayons) ,
        rectangle( ...
            'Position',[q(2*i-1)-rayons(i) q(2*i)-rayons(i) ...
            2*rayons(i) 2*rayons(i)], ...
            'Curvature',[1 1], 'FaceColor',colors(i,:) , ...
            'EdgeColor',colors(i,:) ) ;
end
    %axis(box);
    axis('equal');

end

