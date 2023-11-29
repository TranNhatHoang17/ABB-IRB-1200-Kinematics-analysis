function [theta1,theta2,theta3,theta4,theta5,theta6] = myInverse(R)
    nx=R(1,1)    ;  ox=R(1,2);     ax=R(1,3);   Px=R(1,4);
    ny=R(2,1)   ;   oy=R(2,2);     ay=R(2,3);   Py=R(2,4);
    nz=R(3,1)   ;   oz=R(3,2);     az=R(3,3);   Pz=R(3,4);
    [a,alpha,d] = get_dh();
    %joint(1);
    %joint(1);
    P06 = [Px;Py;Pz];
    P46 = d(6)*[ax; ay; az];
    P04 = P06- P46;
    t1 = atan2(P04(2),P04(1));

    
    %joint(3)
    P01 = [a(1)*cos(t1); a(1)*sin(t1); d(1)];
    P14 = P04 - P01;
    P14L =norm(P14);
    l1 = sqrt(a(3)^2 + d(4)^2);
    phuy = acos((l1^2 + a(2)^2 - P14L^2)/(2*l1*a(2)));
    eur = atan2(d(4),a(3));
    t3 = -(phuy + eur - pi);

    %joint(2):
    beta1 = atan2( P14(3),sqrt(P14(1)^2 + P14(2)^2));
    beta2 = acos((a(2)^2 + P14L^2 - l1^2)/(2*P14L*a(2)));
    if Py<0
        if Px<0
            M1=cos(t1)*Px+sin(t1)*Py-d(6)*cos(t1)*ax-d(6)*sin(t1)*ay;
            M2=Pz-d(1)-d(6)*az;
            M=-a(2)*sin(t3)+d(4);
            t23=atan2(M1,M2)-atan2(M,-sqrt(M1^2+M2^2-M^2));
            t2=t23-2*t3;
            t2=-t2;
        else
            M1=cos(t1)*Px+sin(t1)*Py-d(6)*cos(t1)*ax-d(6)*sin(t1)*ay;
            M2=Pz-d(1)-d(6)*az;
            M=-a(2)*sin(t3)+d(4);
            t23=atan2(M1,M2)-atan2(M,sqrt(M1^2+M2^2-M^2));
            t2=t23-t3;
        end
    else
        if Px>0
            t2 = -(beta1 + beta2)+pi/2;
        else
            M1=cos(t1)*Px+sin(t1)*Py-d(6)*cos(t1)*ax-d(6)*sin(t1)*ay;
            M2=Pz-d(1)-d(6)*az;
            M=-a(2)*sin(t3)+d(4);
            t23=atan2(M1,M2)-atan2(M,-sqrt(M1^2+M2^2-M^2));
            t2=t23-2*t3; 
            t2=-t2;
        end
    end


    

    %joint 4
    c4=sin(t1)*ax-cos(t1)*ay;
    s4=cos(t1)*sin(t2+t3)*ax+sin(t1)*sin(t2+t3)*ay+cos(t2+t3)*az;
%     t4=atan2(s4,c4);
    if Px<0
        t4=-atan2(s4,c4)+pi/2;
    else
        if Py<0
            t4=atan2(s4,c4)+pi/2;
            t4=-t4;
        else
            t4=atan2(s4,c4)+pi/2;
            t4=-t4;
        end
    end
    %joint 5
    if Py<0
       c5= nx*cos(t1)*cos(t2)*cos(t3) - nz*cos(t3)*sin(t2) - nz*cos(t2)*sin(t3) + ny*cos(t2)*cos(t3)*sin(t1) - nx*cos(t1)*sin(t2)*sin(t3) - ny*sin(t1)*sin(t2)*sin(t3);
       s5=sqrt(1-c5^2);
       t5=pi/2-atan2(s5,-c5);
    else
        t5=acos(-cos(t1)*cos(t2+t3)*nx+sin(t1)*cos(t2+t3)*ay+az*sin(t2+t3));
    end
    
    %Joint 6
    t6=0;

    threshold = 10e-10;
    variables = [t1, t2, t3, t4, t5, t6];
    variables(abs(variables) < threshold) = 0;


    theta1  = variables(1);
    theta2  = variables(2);
    theta3  = variables(3);
    theta4  = variables(4);
    theta5  = variables(5);
    theta6  = variables(6);
%     if Px>0
%         t1 = atan2(P04(2),P04(1));
%     else
%         if Py>0
%             t1 = atan2(P04(2),P04(1))-pi; 
%         else
%             t1 = atan2(P04(2),P04(1));
%         end
%     end
%     if t1==pi
%         theta1=theta1-pi;
%     else
%         if Py<0
%             theta1=theta1+pi;
%         else
%             theta1=theta1-pi;
%         end
%     end
end