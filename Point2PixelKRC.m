function [pix2D] = Point2PixelKRC(obj, point3D)
  
  debug = true
  if debug
    obj.K
    obj.R
    obj.C
    P = obj.K * obj.R * [eye(3,3), -obj.C]
    P * point3D
  end

  pix2D = obj.K * obj.R * [eye(3,3), -obj.C] * point3D;
end
