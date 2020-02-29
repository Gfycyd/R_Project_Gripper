%% KINEMATICS OF SELECTED GRIPPER
% 
  
clear
close all
syms w h OA AB BC CD DE FE t beta0 PC real;
syms cX cY aY fX fY real;
%% 1 STEP
disp('Angular Velocity we receive to Linear Velocity of Rod OA(half of AA1): ');
Vbsp = simplify(w/2/pi * h);
disp(Vbsp)
%% 2nd Step
AC = (AB+BC) - Vbsp*t ;

% cosinus theorem:
alpha_beta_minus_180 = simplify(acos((AB*AB + BC*BC - AC*AC)/2/AB/BC) * 180 / pi);

% by sinus theorem
ugolA = asin(AC/BC * sin(alpha_beta_minus_180)) * 180 /pi;
ugolC = asin(AC/AB * sin(alpha_beta_minus_180)) * 180 /pi;
fi = asin(PC/AC);

% angles alpha and beta
alpha = ugolA - fi;
beta = 180 - alpha_beta_minus_180 - alpha;

% angle fi is equal beta-beta0
fi = beta - beta0;
gamma = fi; % there are parallel

dX = simplify(cX + CD*cos(gamma));
dY = simplify(cY + CD*sin(gamma));

aX0 = 0;
aX = aX0 + Vbsp*t;

bX = simplify(aX - AC*sin(alpha));
bY = simplify(aY - AC*sin(alpha));
eY = simplify(fY + FE*cos(gamma));
eX = simplify(fX + FE*cos(gamma));

%% 3rd Step: Velocities and Accelerations for all points

% velocity of Joint A
vAY = diff(aY);
vAX = diff(aX);
vA = sqrt(vAX*vAX + vAY*vAY);

% acceleration of Joint A
aAY = diff(vAY);
aAX = diff(vAX);
aA = sqrt(aAX*aAX + aAY*aAY);


% velocity of Joint B
vBY = diff(bY);
vBX = diff(bX);
vB = sqrt(vBX*vBX + vBY*vBY);

% acceleration of Joint B
aBY = diff(vBY);
aBX = diff(vBX);
aB = sqrt(aBX*aBX + aBY*aBY);


% velocity of Joint C
vCY = diff(cY);
vCX = diff(cX);
vC = sqrt(vCX*vCX + vCY*vCY);

% acceleration of Joint C
aCY = diff(vCY);
aCX = diff(vCX);
aC = sqrt(aCX*aCX + aCY*aCY);


% velocity of Joint D
vDY = diff(dY);
vDX = diff(dX);
vD = sqrt(vDX*vDX + vDY*vDY);

% acceleration of Joint D
aDY = diff(vDY);
aDX = diff(vDX);
aD = sqrt(aDX*aDX + aDY*aDY);


% velocity of Joint E
vEY = diff(eY);
vEX = diff(eX);
vE = sqrt(vEX*vEX + vEY*vEY);

% acceleration of Joint E
aEY = diff(vEY);
aEX = diff(vEX);
aE = sqrt(aEX*aEX + aEY*aEY);


% velocity of Joint F
vFY = diff(fY);
vFX = diff(fX);
vF = sqrt(vFX*vFX + vFY*vFY);

% acceleration of Joint F
aFY = diff(vFY);
aFX = diff(vFX);
aF = sqrt(aFX*aFX + aFY*aFY);
%% 4th Step: Show Values of Joint E (or we consider it as an endeffector

disp("Print X pos of E:")
disp(simplify(eX))

disp("Print Y pos of E:")
disp(simplify(eY))

disp("Print velocity of E:")
disp(vE)

disp("Print acceleration of E:")
disp(aE)
