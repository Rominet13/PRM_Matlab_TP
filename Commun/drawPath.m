function drawPath( path , qSet , step , radius , box )
% configurations of the path should satisfy path(i+1) ~= path(i).

colors = [ [1 0.7 0.7] ; [0.6 1 0.6] ; [0.7 0.7 1] ; [1 0.7 1] ] ;
dimColors = [ [1 0.95 0.95] ; [0.95 1 0.95] ; [0.95 0.95 1] ; [1 0.95 1] ] ;
dimEdges = [ [1 0.8 0.8] ; [0.8 1 0.8] ; [0.8 0.8 1] ; [1 0.8 1] ] ;
lineColors = [ [1 0 0] ; [0 0.8 0] ; [0 0 1] ; [1 0 1] ] ;

for i = 1 : length(path)-1 ,
    q1 = qSet(path(i),:)   ;
    q2 = qSet(path(i+1),:) ;
    u = (q2-q1) / norm(q2-q1) ;
    nbSteps = floor( norm(q2-q1) / step ) ;
    for j = 0 : nbSteps ,
        q = q1 + j*step* u ;
        drawConfiguration( q , radius , box , colors , colors ) ;
        pause(0.5) ;
        % Now dim the drawing.
        drawConfiguration( q , radius , box , dimColors , dimEdges ) ;
    end
    drawConfiguration( q , radius , box , colors , colors ) ;

    drawConfiguration( q , radius , box , dimColors , dimEdges ) ;
end
drawConfiguration( qSet(path(length(path)),:) , radius , box , ...
    colors , colors ) ;
for i = 1 : length(path)-1 ,
    for j = 1 : length(radius) ,
        line( [qSet(path(i),2*j-1) qSet(path(i+1),2*j-1)] , ...
              [qSet(path(i),2*j  ) qSet(path(i+1),2*j  )] , ...
              'Color',lineColors(j,:) ) ;
    end
end
return
end
    