Px=433;
Py=0;
Pz=791;
[a,alpha,d] = get_dh();   
%joint(1);
t1=atan2(Py,Px);

%joint(3)
x=a(3); y=-d(4);
h=sqrt(x^2+y^2);
k=(Px^2+Py^2+(Pz-d(1))^2-h^2-a(2)^2)/(2*a(2)*h);

%     t3=atan2(y,x)-atan2((sqrt(x^2+y^2)-sqrt(k^2)),k);
t3=atan2(k,-sqrt(x^2+y^2-k^2))-atan2(x,y);


%joint(2):
m1=cos(t1)*Px+Py*sin(t1)-d(6)*cos(t1)*ax-d(6)*sin(t1)*ay;
m2=Pz-d(1)-d(6)*az;
m3=-a(2)*sin(t3)+d(4);

t23=atan2(m1,m2)-atan2(m3,-sqrt(m1^2+m2^2-m3^2));
t2=t23-t3;