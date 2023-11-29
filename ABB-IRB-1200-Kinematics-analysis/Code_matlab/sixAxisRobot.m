clear
clc 

a1 = 25; a2 = 455; a3 = 35;
d1 = 400; d4 = -420; d6 = -80;

%L() = Link([q, d, a, alpha]);

L(1) = Link([0, d1, a1, -pi/2]);
L(2) = Link([0, 0 , a2,  0    ]);
L(3) = Link([0, 0 , a3,  pi/2]);
L(4) = Link([0, d4, 0 , -pi/2]);
L(5) = Link([0, 0 , 0 ,  pi/2]);
L(6) = Link([0, d6, 0 ,  pi  ]);

kuka_R6 = SerialLink(L);

%             [ x    y    z ]
point(1, :) = [200  0    100];
point(2, :) = [600  0    100];
point(3, :) = [600  200  100];
point(4, :) = [200  200  100];
point(5, :) = [200  200  300];
point(6, :) = [200 -100  300];
point(7, :) = [600 -100  300];
point(8, :) = [600  400  300];
% disp(point)

samples = 20;

x = zeros((samples*(length(point)-1))+1, 1);
y = zeros((samples*(length(point)-1))+1, 1);
z = zeros((samples*(length(point)-1))+1, 1);

%%


for trans = 1:length(point)-1
    if point(trans+1,1)-point(trans,1) == 0
        x(((trans-1)*samples)+1:trans*samples+2,1) = point(trans,1);
    else
        xstore = point(trans,1):((point(trans+1,1)-point(trans,1))/samples):point(trans+1,1);
        if trans>1
            x(((trans-1)*samples)+2:trans*samples+2,1) = xstore';
        else
            x(((trans-1)*samples)+1:trans*samples+1,1) = xstore';
        end
    end
end
clear xstore trans
for trans = 1:length(point)-1
    if point(trans+1,2)-point(trans,2) == 0
        y(((trans-1)*samples)+1:trans*samples+2,1) = point(trans,2);
    else
        ystore = point(trans,2):((point(trans+1,2)-point(trans,2))/samples):point(trans+1,2);
        if trans>1
            y(((trans-1)*samples)+2:trans*samples+2,1) = ystore';
        else
            y(((trans-1)*samples)+1:trans*samples+1,1) = ystore';
        end
    end
end
clear ystore trans
for trans = 1:length(point)-1
    if point(trans+1,3)-point(trans,3) == 0
        z(((trans-1)*samples)+1:trans*samples+2,1) = point(trans,3);
    else
        zstore = point(trans,3):((point(trans+1,3)-point(trans,3))/samples):point(trans+1,3);
        if trans>1
            z(((trans-1)*samples)+2:trans*samples+2,1) = zstore';
        else
            z(((trans-1)*samples)+1:trans*samples+1,1) = zstore';
        end
    end
end
clear zstore trans
%%

T = zeros(4,4,length(x));

for loop= 1:length(x)
    T(:,:,loop) = [1,  0,  0, 0;
                   0, -1,  0, 0;
                   0,  0, -1, 0;
                   0,  0,  0, 1];
end

for loop= 1:length(x)
    T(1,4,loop) = x(loop);
    T(2,4,loop) = y(loop);
    T(3,4,loop) = z(loop);
end

clear loop

%%
q1 = zeros(length(x),6);
for loop = 1:length(x)
    q1(loop,:) = kuka_R6.ikine(T(:,:,loop));
end
%%
kuka_R6.plotopt = {'tilesize', 200};
kuka_R6.plot(q1)
hold on
plot3(x,y,z)





