% script for camera model with distortion ==> panasonic lumix g7
mm2m_factor = 1e-3;

% sensor properties
sensor_dims_mm = [17.3 13.0];
sensor_dims_m = sensor_dims_mm * mm2m_factor;

sensor_pixels = [4592 3448];
pixel_pitch_m = sensor_dims_m ./ sensor_pixels;

% focal length
focal_length_mm = 42.5;
focal_length_m = focal_length_mm * mm2m_factor;

% calibration matrix
K = eye(3);
K(1,1) = focal_length_m / pixel_pitch_m(1);
K(2,2) = focal_length_m / pixel_pitch_m(2);
K(1,3) = sensor_pixels(1)/2;
K(2,3) = sensor_pixels(2)/2;
K(3,3) = 1;

% rotation matrix - identity
R = eye(3);

% position vector
C = [0;0;0];

% projection matrix
P = K*R*[eye(3), -C];

% 3d points - homogenous
pnt3_1 = [0;0;1;1];
pnt3_2 = [0;0;10;1];
pnt3_3 = [0;0;100;1];

% 2d points projected - homogenous
pnt2_1_h = P*pnt3_1;
pnt2_2_h = P*pnt3_2;
pnt2_3_h = P*pnt3_3;

pnt2_1 = pnt2_1_h/pnt2_1_h(3);
pnt2_2 = pnt2_2_h/pnt2_2_h(3);
pnt2_3 = pnt2_3_h/pnt2_3_h(3);

% point represent same xy position in front of principal point
% so should project to the same place in image plane
assert(pnt2_1 == pnt2_2);
assert(pnt2_1 == pnt2_3);

% get field of view - radians
fov_horizontal_rad = atan2(sensor_pixels(1), K(1,1));
fov_vertical_rad = atan2(sensor_pixels(2), K(2,2));

% field of view - deg
fov_horizontal_deg = fov_horizontal_rad * 180/pi;
fov_vertical_deg = fov_vertical_rad * 180/pi;