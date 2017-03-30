% Meilleur affichage actuel. S'adapte au nombre de robot, trace en ligne le
% chemin suivie, et anime le déplacement des robots.
function affichageDynamique( path , qSet , step , radius , box )
%dimensionnement de la fenêtre
axis(box);
axis('equal');
%variable pour initialisation des positions des 1er rectangle
ini=1;

% chargement des couleurs fixe pour 4 robots /// vieille méthode
%colors = [ [1 0.7 0.7] ; [0.6 1 0.6] ; [0.7 0.7 1] ; [1 0.7 1] ] ;
%dimColors = [ [1 0.95 0.95] ; [0.95 1 0.95] ; [0.95 0.95 1] ; [1 0.95 1] ] ;
%dimEdges = [ [1 0.8 0.8] ; [0.8 1 0.8] ; [0.8 0.8 1] ; [1 0.8 1] ] ;
%lineColors = [ [1 0 0] ; [0 0.8 0] ; [0 0 1] ; [1 0 1] ] ;

% chargement des couleurs aléatoirement, méthode valable pour autant de
% robots que voulus
global nodeInfo nRobots
colors=[];
dimColors=[];
dimEdges=[];
%lineColors=[];
for i = 1 : nRobots
    colors=cat(1,colors,nodeInfo(i,1:3));
    dimColors=cat(1,dimColors,[0.95 1 0.95]);%dimColors,nodeInfo(i,1:3))
    dimEdges=cat(1,dimEdges,[1 0.8 0.8]);%,nodeInfo(i,1:3));
    %lineColors = cat(1,lineColors,[1 0 0]) ;
end
colors=nodeInfo(1:nRobots,1:3);
%dimColors=colors;
%dimEdges=colors;
lineColors=colors;

% tracé les trajectoires (lignes)
%drawConfiguration( qSet(path(length(path)),:) , radius , box , colors , colors ) ; %tracait les contours mais on n'en veut pas...
for i = 1 : length(path)-1 ,
    for j = 1 : length(radius) ,
        line( [qSet(path(i),2*j-1) qSet(path(i+1),2*j-1)] , ...
            [qSet(path(i),2*j  ) qSet(path(i+1),2*j  )] , ...
            'Color',lineColors(j,:) ) ;
    end
end

%animation du déplacement des robots
for i = 1 : length(path)-1 ,
    q1 = qSet(path(i),:)   ;
    q2 = qSet(path(i+1),:) ;
    u = (q2-q1) / norm(q2-q1) ;
    nbSteps = floor( norm(q2-q1) / step ) ;
    for j = 0 : nbSteps ,
        q = q1 + j*step* u ;
        if(ini==1) %INITIALISATION positions cercles robots%rectangles=[];
            for k = 1 : length(radius) ,
                rectangles(k)=rectangle( ...
                    'Position',[q(2*k-1)-radius(i) q(2*k)-radius(k) ...
                    2*radius(k) 2*radius(k)], ...
                    'Curvature',[1 1], 'FaceColor',colors(k,:) );% , ...
                %'EdgeColor',dimEdges(k,:),'LineWidth',3 ) ;
            end
            ini=0;
        else %actualisation de la position du robot
            for k = 1 : length(radius)
                rectangles(k).Position=[q(2*k-1)-radius(k), q(2*k)-radius(k), ...
                    2*radius(k), 2*radius(k)] ;
            end
        end
        pause(0.5) ; %attend pour simuler une vitesse non infinie du robot
        %Mais les robots ont tous la même vitesse.
        
        % Now dim the drawing.
        %axis(box); useless
        %axis('equal'); %redim
    end
    %drawConfiguration( q , radius , box , colors , colors ) ;
    %drawConfiguration( q , radius , box , dimColors , dimEdges ) ;
end

return
end