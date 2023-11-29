t1=deg2rad(30);
t2=deg2rad(30);
t3=deg2rad(-60);
t4=deg2rad(0);
t5=deg2rad(0);
t6=deg2rad(0);
test= myForward(t1 , t2 ,t3 ,t4,t5,t6)
testpos= myForwardPos(t1 , t2 ,t3 ,t4,t5,t6)
testinv=myInverse(test);
[theta1,theta2,theta3,theta4,theta5,theta6] = myInverse(test);
test_inverse=rad2deg([theta1,theta2,theta3,theta4,theta5,theta6])

