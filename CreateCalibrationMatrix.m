function [K] = CreateCalibrationMatrix(fx, fy, cx, cy)
  K = zeros(3,3);
  K(1,1) = fx;  # focal length x (in px)
  K(2,2) = fy;  # focal length y (in px)
  K(1,3) = cx;  # image center x (in px)
  K(2,3) = cy;  # image center y (in px)
  K(3,3) = 1;
end