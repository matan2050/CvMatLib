function [vector] = Pixel2VectorKRC(obj, pix2D)
  
  image_center_x = obj.K(1,3);
  image_center_y = obj.K(2,3);
  
  # TODO for now - focal length will be average of fx and fy
  vector = [pix2D(1) - image_center_x; 
            pix2D(2) - image_center_y;
            (obj.K(1,1) + obj.K(2,2))/2]; 
  
end
