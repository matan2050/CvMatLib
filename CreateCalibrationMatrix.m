function [K] = CreateCalibrationMatrix(fx, fy, cx, cy)
  K = zeros(3,3);
  K(1,1) = fx;
  K(2,2) = fy;
  K(1,3) = cx;
  K(2,3) = cy;
  K(3,3) = 1;
end