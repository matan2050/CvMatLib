function [obj] = PinholeCameraModelKRC(obj, K, R, C)
  obj.K = K;
  obj.R = R;
  obj.C = C;
endfunction