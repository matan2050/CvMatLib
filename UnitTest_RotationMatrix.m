# script for checking that rotations are correct

pnts = eye(3);
scatter3(pnts(:,1), pnts(:,2), pnts(:,3));
title('Original');
figure;
R = CreateRotationMatrix(0,pi/2,0);
pntsT = R * pnts;
scatter3(pntsT(:,1), pntsT(:,2), pntsT(:,3));
title('after rotation');
pnts
pntsT