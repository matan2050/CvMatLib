function [obj] = PinholeCameraModelKRC(obj, K, R, C)

  # members
  obj.K = K;
  obj.R = R;
  obj.C = C;
  
  # methods
  obj.Point2Pixel = @Point2PixelKRC;
  obj.Pixel2Vector = @Pixel2VectorKRC;
  obj.Distortion = @Distortion;
end