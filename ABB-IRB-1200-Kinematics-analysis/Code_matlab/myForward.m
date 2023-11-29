function totalA = myForward(t1,t2,t3,t4,t5,t6)
    [a,alpha,d] = get_dh();
%     a =     [  0    350    42     0     0    0];
%     alpha = [pi/2      0    pi/2   -pi/2  pi/2 0];
%     d =     [    399      0      0    351    0   82];
%     theta = [t1  t2  t3 t4  t5  t6];

    % Định nghĩa ngưỡng gần bằng 0
%     epsilon = 10e-13;
    
    % Tính toán ma trận DH transformation
%     totalA = A(theta(1),a(1),alpha(1),d(1))*A(theta(2)-pi/2,a(2),alpha(2),d(2))*A(theta(3),a(3),alpha(3),d(3))*A(theta(4),a(4),alpha(4),d(4))*A(theta(5),a(5),alpha(5),d(5))*A(theta(6),a(6),alpha(6),d(6));
%     totalA(abs(totalA)<epsilon) = 0;
    T01 = [cos(t1),  0, -sin(t1), 0;
           sin(t1),  0,  cos(t1), 0;
                 0, -1,        0,          d(1);
                 0,  0,        0,          1];

    T12 = [sin(t2),  cos(t2), 0, a(2)*sin(t2);
       -cos(t2),  sin(t2), 0, -a(2)*cos(t2);
             0,        0, 1,          0;
             0,        0, 0,          1];

    T23 = [cos(t3),  0, -sin(t3), a(3)*cos(t3);
           sin(t3),  0,  cos(t3), a(3)*sin(t3);
                 0, -1,        0,          0;
                 0,  0,        0,          1];
    
    T34 = [cos(t4), 0,  sin(t4),  0;
           sin(t4), 0, -cos(t4),  0;
                 0, 1,        0, d(4);
                 0, 0,        0,  1];
    
    T45 = [cos(t5),  0, -sin(t5), 0;
           sin(t5),  0,  cos(t5), 0;
                 0, -1,        0, 0; 
                 0,  0,        0, 1];
    
    T56 = [-cos(t6), sin(t6), 0, 0;
           -sin(t6),  -cos(t6), 0, 0;
                 0,        0, 1, d(6);
                 0,        0, 0, 1];
    
    
    T06=T01*T12*T23*T34*T45*T56;
    totalA=T06;
end



