% distortion model - Brown-Conrady
% k - radial distortion parameters
% p - tangential distortion parameters
function [obj] = Distortion(obj, k, p)
  
  % members
  obj.K = k;
  obj.P = p;
  
  % methods
  obj.Undistort = @UndistortPoint;
  
end
