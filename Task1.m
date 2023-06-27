% THERMAL SYSTEMS MATLAB CODE FOR TASK 2 APP
% WRITTEN BY POWELL LONGJOHN


% SYSTEM PARAMETERS
C1 = 50; %thermal capacitance of C1(J/K)
C2 = 60; %thermal capacitance of C2(J/K)
R1 = 10; %thermal resistance of R1(Ks/J)
R2 = 10; %thermal resistance of R2(Ks/J)
R3 = 10;%thermal resistance of R2(Ks/J)
R12 = R1*R2/(R1+R2);%thermal resistance of R12(K/W)
R23 = R2*R3/(R2+R3);%thermal resistance of R23(K/W)

%K1-P9 are constants used in the transfer function in order for it to be
%simplified

K1 = 1/(C1*C2*R2);
K2 = 1/(C1*R12);
K3 = 1/(C2*R23);
K4 = (R2^2-(R12*R23))/(C1*C2*R12*R23*R2^2);
P0 = 1/C1;
P1 = 1/(C1^2*R12);
P2 = 1/(C1*C2*R23);
P3 = 1/(C1^2*C2*R12*R23);
P4 = 2/(C1*R12);
P5 = 1/(C2*R23);
P6 = 1/(C1^2*R12^2);
P7 = 1/(C1*C2*R12*R23);
P8 = (R2^2-R12*R23)/(C1*C2*R12*R23*R2^2);
P9 = (R2^2-(R12*R23))/(C1^2*C2*R12^2*R23*R2^2);
theta_a = 293.15;%ambient temperature(K)

% SIMULATION TIME AND INPUT
sim_time = 0:5:10;

% TRANSFER FUNCTION MODEL FOR theta_1
den = [1 (K2+K3) K4];
num = K1;
sys = tf(num,den);

% TRANSFER FUNCTION MODEL FOR theta_2
den = [1 (P4+P5) (P6+P7+P8) P9];
num = [P0 (P1+P2) P3];
sys1 = tf(num,den);





