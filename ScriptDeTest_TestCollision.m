point4D=[rand,rand,rand,rand]
rayon1=[rand/2,rand/2]
if (TestCollision( point4D, rayon1)==1)
    disp('collision')
else
    disp('pas de collision')
end