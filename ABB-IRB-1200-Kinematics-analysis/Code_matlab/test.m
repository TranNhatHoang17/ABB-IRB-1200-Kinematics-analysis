clear all
clc

% take DH's parameters
[a,alpha,d] = get_dh();
% a =     [  0    350    42     0     0    0];
% alpha = [pi/2      0    pi/2   -pi/2  pi/2 0];
% d =     [    399      0      0    351    0   82];

% create robot structure by Robotics Toolbox
   %Link([theta, d,     a,     alpha,      jointType(0: Rot; 1:Trans])
S(1) = Link([0   d(1)   a(1)   alpha(1)      0]); %S(1).qlim = pi/180*[-170 170];
S(2) = Link([0   d(2)   a(2)   alpha(2)       0]); %S(2).qlim = pi/180*[-100 135];
S(3) = Link([0   d(3)   a(3)   alpha(3)      0]); %S(3).qlim = pi/180*[-200 70];
S(4) = Link([0   d(4)   a(4)   alpha(4)      0]); %S(4).qlim = pi/180*[-270 270];
S(5) = Link([0   d(5)   a(5)   alpha(5)      0]); %S(5).qlim = pi/180*[-130 130];
S(6) = Link([0   d(6)   a(6)   alpha(6)      0]); %S(6).qlim = pi/180*[-360 360];
% angle_offset = [0 0+90 0 0 0 0]*pi/180;
Rob = SerialLink(S); % Creating robot model
Rob.name = '6R';


% angles=[0 0-pi/2 0 0 0 0-pi];

angles=[pi/6 pi/3-pi/2 pi/6 pi/4 pi/3 0-pi];
a_point= Rob.A(1:6,angles);

% testfwd= myForward(0, 0, 0, 0, 0, 0);
testfwd= myForward(-pi/6, pi/6, -pi/3, pi/4, pi/6, 0)
postest=myForwardPos(-pi/6, pi/6, -pi/3, pi/4, pi/6, 0)
[theta1,theta2,theta3,theta4,theta5,theta6] = myInverse(testfwd);
test_inverse=rad2deg([theta1,theta2,theta3,theta4,theta5,theta6])


