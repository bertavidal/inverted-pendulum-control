clear all; clc;
% ==========================================
% 1. PARÀMETRES FÍSICS DEL PÈNDOL INVERTIT
% ==========================================
r   = 0.006;
M_c = 0.135;
m   = 0.1;
l   = 0.2;
I   = 0.00072;
g   = 9.81;
b   = 0.000078;
c   = 0.63;
Rm  = 12.5;
kb  = 0.031;
kt  = 0.031;
Jm  = 3.26e-8;
M   = M_c + Jm / r^2;

% ==========================================
% 2. MODEL EN ESPAI D'ESTATS x = [x, θ, ẋ, θ̇]'
% ==========================================
alpha = I*(M + m) + M*m*(l^2);

aa = (m^2 * l^2 * g) / alpha;
bb = ((I + m*l^2) / alpha) * (c + (kb*kt)/(Rm*r^2));
cc = (b * m * l) / alpha;
dd = (m * g * l * (M + m)) / alpha;
ee = ((m*l) / alpha) * (c + (kb*kt)/(Rm*r^2));
ff = ((M + m) * b) / alpha;
mm = ((I + m*l^2) * kt) / (alpha * Rm * r);
nn = (m * l * kt) / (alpha * Rm * r);

A = [0,  0,   1,   0 ;
     0,  0,   0,   1 ;
     0,  aa, -bb, -cc ;
     0,  dd, -ee, -ff ];
B = [0 ; 0 ; mm ; nn];

% Sensors reals: només posició i angle
C = [1 0 0 0;
     0 1 0 0];
D = zeros(2, 1);
n = 4;

fprintf('Matriu A:\n'); disp(A)
fprintf('Vector B:\n'); disp(B)

% ==========================================
% 3. CONTROLABILITAT I OBSERVABILITAT
% ==========================================
fprintf('Rank controlabilitat: %d / %d\n', rank(ctrb(A, B)), n);
fprintf('Rank observabilitat:  %d / %d\n', rank(obsv(A, C)), n);

% ==========================================
% 4. CONTROLADOR LQR
% ==========================================
Q    = diag([1200, 1500, 0, 0]);
R_lqr = 0.05;
KK   = lqr(A, B, Q, R_lqr);

fprintf('Guany LQR KK:\n'); disp(KK)
fprintf('Valors propis A-B*KK: '); disp(eig(A - B*KK)')

% ==========================================
% 5. FILTRE DE KALMAN
% ==========================================
Vd = 0.001 * eye(n);   % Soroll de procés:  4x4
Vn = 0.001 * eye(2);   % Soroll de mesura:  2x2 (2 sensors)

L  = lqr(A', C', Vd, Vn)';   % Guany Kalman: 4x2

fprintf('Guany Kalman L:\n'); disp(L)
fprintf('Valors propis A-L*C: '); disp(eig(A - L*C)')

% Matrius per al bloc ss de Simulink
Akf = A - L*C;       % 4x4
Bkf = [B, L];        % 4x3  (u escalar + 2 mesures)
Ckf = eye(4);        % 4x4
Dkf = zeros(4, 3);   % 4x3

fprintf('Dimensions Bkf: %dx%d\n', size(Bkf,1), size(Bkf,2))