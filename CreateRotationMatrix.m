function [R, rx, ry, rz] = CreateRotationMatrix(ang_x, ang_y, ang_z)
  
  rx = zeros(3,3);
  ry = zeros(3,3);
  rz = zeros(3,3);
  
  rx(1,1) = cos(ang_x);
  rx(2,2) = cos(ang_x);
  rx(1,2) = -sin(ang_x);
  rx(2,1) = sin(ang_x);
  rx(3,3) = 1;
  
  ry(1,1) = cos(ang_y);
  ry(3,3) = cos(ang_y);
  ry(1,3) = sin(ang_y);
  ry(3,1) = -sin(ang_y);
  ry(2,2) = 1;
  
  rz(2,2) = cos(ang_z);
  rz(3,3) = cos(ang_z);
  rz(2,3) = -sin(ang_z);
  rz(3,2) = sin(ang_z);
  rz(1,1) = 1;
  
  R = rx*ry*rz;
  
end