clear all;
close all;
addpath('Commun'); %fichier commun à tous les groupes
addpath('Astar'); %fichier pour la résolution du plus court chemin avec A*
globaleVariables %charges les paramétres du test
disp('Construction des matrices.Veuillez patienter svp...');
Setup %initialise les paramétres du test (position initiales, finales...)

%résolution avec A* (choix de la métrique: norme euclidienne)
disp('En cours de résolution. Veuillez patienter svp...');
[path,cost] = astar( 1 , 2 , graph , nodeInfo , @norm );
disp('fini!');
if(0==size(path))
    disp('pas de solution trouvé');
else
    
    % vielle technique d'affichage
    % taille=size(path);
    % for i = taille(2) : -1 :2
    %     pointIni=nodeInfo(path(i),:);
    %     pointFin=nodeInfo(path(i-1),:);
    %     nbPoint=1/stepSize;
    %     direction=pointFin-pointIni;
    %     for j=1 : nbPoint
    %        Pt=pointIni+direction*j/nbPoint;
    %        drawExemple(Pt)
    %        pause
    %     end
    % end
    % drawInitFin
    
    % Affichage pour 4 robots seulement
    %drawInitFin()
    %drawPath(path,nodeInfo,0.1,rayons,[0 1,0 1])
    %drawPathMultiRobots(path,nodeInfo,0.1,rayons,[0 1,0 1])
    
    %affichage dynamique et adapté à plusieurs robots
    affichageDynamique(path,nodeInfo,stepSize,rayons,[0 1,0 1]);
    pause %pour garder la fenêtre ouverte.
    
    %sauvegarde de toutes les données
    disp('Sauvegarde des données');
    nomFichier=['sauvegarde/',datestr(now, 'yyyy-MM-dd--HH-mm-ss'),'.mat'];
    save(nomFichier) %strcat('sauvegarde/test',cat(datetime('now','TimeZone','local')),'.mat') %num2str(clock),'.mat')
    %load 'sauvegarde/test.mat' pour recharger toutes les données
    %affichageDynamique(path,nodeInfo,stepSize,rayons,[0 1,0 1]); %puis cette
    %commande pour relancer l'animation
end