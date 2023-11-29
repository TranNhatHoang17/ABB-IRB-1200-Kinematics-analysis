function totalA = myForwardPos(t1,t2,t3,t4,t5,t6)
    [a,alpha,d] = get_dh();
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
    totalA = totalA(1:3,4);
end
