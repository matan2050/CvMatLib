function [undistorted] = UndistortPoint(obj, point_relative_to_center)
  
  r = sqrt(point_relative_to_center(1)^2 + point_relative_to_center(2)^2);
  
  radial = 1;
  
  for i=1:obj.K.length
    radial += obj.K(i) * r^(i*2);
  end
  
end
