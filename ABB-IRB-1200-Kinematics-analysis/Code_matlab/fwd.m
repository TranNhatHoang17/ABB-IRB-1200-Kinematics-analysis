clc; clear all;
% t1=deg2rad(0);
% t2=deg2rad(0);
% t3=deg2rad(0);
% t4=deg2rad(0);
% t5=deg2rad(0);
% t6=deg2rad(0);
% a2 = 350;
% a3 = 42;
% d4 = 351;
% d1=399;
% d6=82;

syms t4 t5 t6 nx ny nz sx sy sz px py pz;
syms a1 a2 a3 d4 t1 t2 t3 
syms ax ay az d1 d4 d6

% ax = -sin(t5) * (sin(t1) * sin(t4) + cos(t1) * cos(t4) * cos(t2 + t3))-cos(t5)*cos(t1)*sin(t2+t3);
% ay = sin(t5) * (cos(t1) * cos(t4) + sin(t1) * cos(t4) * cos(t2 + t3)) - cos(t5) * sin(t1) * sin(t2 + t3);
% az=sin(t2+t3)*cos(t4)*sin(t5)-cos(t2+t3)*cos(t5);

T01 = [cos(t1),  0, -sin(t1), 0;
       sin(t1),  0,  cos(t1), 0;
             0, -1,        0,          d1;
             0,  0,        0,          1] ;

T12 = [sin(t2),  cos(t2), 0, a2*sin(t2);
       -cos(t2),  sin(t2), 0, -a2*cos(t2);
             0,        0, 1,          0;
             0,        0, 0,          1];

T23 = [cos(t3),  0, -sin(t3), a3*cos(t3);
       sin(t3),  0,  cos(t3), a3*sin(t3);
             0, -1,        0,          0;
             0,  0,        0,          1];

T34 = [cos(t4), 0,  sin(t4),  0;
       sin(t4), 0, -cos(t4),  0;
             0, 1,        0, d4;
             0, 0,        0,  1];

T45 = [cos(t5),  0, -sin(t5), 0;
       sin(t5),  0,  cos(t5), 0;
             0, -1,        0, 0; 
             0,  0,        0, 1];

T56 = [-cos(t6), sin(t6), 0, 0;
       -sin(t6),  -cos(t6), 0, 0;
             0,        0, 1, d6;
             0,        0, 0, 1];


T06=T01*T12*T23*T34*T45*T56;

simplify(T06);
syms r11 r12 r13 r14 r21 r22 r23 r24 r31 r32 r33 r34
syms nx ny nz sx sy sz
% T06k=[r11, r12, r13, px;
%     r21, r22, r23, py;
%     r31, r32, r33, pz;
%      0,  0,  0,  1];
T06k=[nx, sx, ax, px;
    ny, sy, ay, py;
    nz, sz, az, pz;
     0,  0,  0,  1];
px=simplify(T06(1,4));
py=simplify(T06(2,4));
pz=simplify(T06(3,4));


T01_inv=inv(T01*T12*T23);
T16=T34*T45*T56;
T16K=simplify(T01_inv*T06k)
T16p=simplify(T01_inv*T06)

n1=simplify(T16K(3,1))
n2=simplify(T16K(2,3))
m1=simplify(T16(3,1))
m2=simplify(T16(3,2))


% n1=simplify(T16K(1,3))
% 
% n2=simplify(T16K(2,3))
% m1=simplify(T16(1,3))
% 
% 
% m2=simplify(T16(2,3))

% ax = -sin(t5) * (sin(t1) * sin(t4) + cos(t1) * cos(t4) * cos(t2 + t3))-cos(t5)*cos(t1)*sin(t2+t3);
% ay = sin(t5) * (cos(t1) * cos(t4) + sin(t1) * cos(t4) * cos(t2 + t3)) - cos(t5) * sin(t1) * sin(t2 + t3);
% az=sin(t2+t3)*cos(t4)*sin(t5)-cos(t2+t3)*cos(t5);
% n1=ax*cos(t1)*cos(t2)*cos(t3) - az*cos(t3)*sin(t2) - az*cos(t2)*sin(t3) + ay*cos(t2)*cos(t3)*sin(t1) - ax*cos(t1)*sin(t2)*sin(t3) - ay*sin(t1)*sin(t2)*sin(t3);
% n2=ax*sin(t1) - ay*cos(t1);
% a=simplify(n2/n1)
% theta4=atan(a)
% 
% n1=simplify(T16K(1,4))
% 
% n2=simplify(T16K(2,4))
% 
% 
% n3=simplify(T16K(3,4))
% 
% 
% m1=simplify(T16(1,4))

% 
% m2=simplify(T16(2,4))
% 
% 
% m3=simplify(T16(3,4))
