clear 
clc
% parameter in DH table 
% take DH's parameters
[a,alpha,d] = get_dh();
%Link( [theta, a, d, alpha, jointType(0: Rot; 1:Trans])
S(1) = Link([0   d(1)   a(1)   alpha(1)      0]); %S(1).qlim = pi/180*[-185 185];
S(2) = Link([0   d(2)   a(2)   alpha(2)      0]); %S(2).qlim = pi/180*[-175 60];
S(3) = Link([0   d(3)   a(3)   alpha(3)      0]); %S(3).qlim = pi/180*[-120 165];
S(4) = Link([0   d(4)   a(4)   alpha(4)      0]); %S(4).qlim = pi/180*[-180 180];
S(5) = Link([0   d(5)   a(5)   alpha(5)      0]); %S(5).qlim = pi/180*[-125 125];
S(6) = Link([0   d(6)   a(6)   alpha(6)      0]); %S(6).qlim = pi/180*[-350 350];
Rob = SerialLink(S);
Rob.name = '6R';

t1 =0; t2=0; t3=0; t4= 0; t5=0; t6=0;
joints = [t1 t2+pi/2 t3 t4 t5 t6];
totalA = Rob.A(1:6,joints);

% nếu size(totalA)=(1,1) dùng code dưới đây
% chuyển ma trận totalA về lại 4x4 
A = zeros(4,4);
A(1:3,1) = totalA.n; A(1:3,2) = totalA.o; A(1:3,3) = totalA.a; A(1:3,4) = totalA.t; % n(1x3),o(1x3),a(1x3),t(1x3)
% chuyển các số gần bằng 0 về 0
thershold = 10e-10;
A(abs(A)<thershold) = 0;
A(4,4)=1;

% định nghĩa điểm đến
x = 0; y = -1500; z = 900;
% 0.5503    1.8585         0    1.6048    0.5506         0
desired_point = [x; y; z];
A(1:3,4) = desired_point;

% tìm ra cấu hình điểm đến 
[theta1,theta2,theta3,theta4,theta5,theta6] = myInverse(A);
des_joints = [theta1,theta2,theta3,theta4,theta5,theta6];
des_joints
numSteps = 30;
step = interpolate6D(joints, des_joints, numSteps);

% UI for 6 angles modification
% Rob.teach
% Rob

% step
% asdasd = myForward(step(numSteps,1),step(numSteps,2),step(numSteps,3),step(numSteps,4),step(numSteps,5),step(numSteps,6))
for i=1:numSteps 
    plot3(desired_point(1),desired_point(2),desired_point(3), 'bo-');
    plot(Rob,step(i,:))
end




