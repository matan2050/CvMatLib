pnts = eye(3)
scatter3(pnts(:,1), pnts(:,2), pnts(:,3))
figure;
R = CreateRotationMatrix(0,pi/2,0)
pntsT = R * pnts
scatter3(pntsT(:,1), pntsT(:,2), pntsT(:,3))
pnts
pntsT