point8D=rand(1,2*nRobots)
global rayons;
rayons=rand(1,nRobots)*1/7
if (TestCollisionv1( point8D)==1)
    disp('collision')
else
    disp('pas de collision')
end
clf;
drawExemple(point8D)
