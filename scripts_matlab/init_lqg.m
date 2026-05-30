% =========================================================================
% INIT_LQG.m - Controlador complet Linear Quadratic Gaussian (LQR + Kalman)
% =========================================================================
clear all; clc;

% ==========================================
% 1. PARÀMETRES FÍSICS DEL PÈNDOL INVERTIT
% ==========================================
r   = 0.006;        % Radi del pinyó del motor [m]
M_c = 0.135;        % Massa del carro [kg]
m   = 0.1;          % Massa del pèndol [kg]
l   = 0.2;          % Longitud fins al CG del pèndol [m]
I   = 0.00072;      % Moment d'inèrcia del pèndol [kg·m²]
g   = 9.81;         % Gravetat [m/s²]
b   = 0.000078;     % Fricció viscosa al pivot del pèndol [N·m·s/rad]
c   = 0.63;         % Fricció viscosa del carro [N·s/m]
Rm  = 12.5;         % Resistència d'armadura del motor [Ω]
kb  = 0.031;        % Constant de força contraelectromotriu [V·s/rad]
kt  = 0.031;        % Constant de parell del motor [N·m/A]
Jm  = 3.26e-8;      % Inèrcia del motor [kg·m²]

% Massa total efectiva (carro + inèrcia rotacional del motor)
M  = M_c + Jm / r^2;   

% ==========================================
% 2. MODEL EN ESPAI D'ESTATS x = [x, θ, ẋ, θ̇]'
% ==========================================
alpha = I*(M + m) + M*m*(l^2);  % Denominador comú

% Coeficients
aa = (m^2 * l^2 * g) / alpha;
bb = ((I + m*l^2) / alpha) * (c + (kb*kt)/(Rm*r^2));
cc = (b * m * l) / alpha;
dd = (m * g * l * (M + m)) / alpha;
ee = ((m*l) / alpha) * (c + (kb*kt)/(Rm*r^2));
ff = ((M + m) * b) / alpha;
mm = ((I + m*l^2) * kt) / (alpha * Rm * r);
nn = (m * l * kt) / (alpha * Rm * r);

% Matrius contínues
A = [0,  0,   1,   0 ;
    0,  0,   0,   1 ;
    0,  aa, -bb, -cc ;
    0,  dd, -ee, -ff ]

B = [0 ; 0 ; mm ; nn]
C = eye(4);
D = zeros(4, 1);
n = 4; % Nombre d'estats

% ==========================================
% 3. DISSENY DEL CONTROLADOR ÒPTIM (LQR)
% ==========================================
Q = diag([1200 1500 0 0]);      % Pesos dels estats
R_lqr = 0.05;                   % Cost de l'esforç de control
KK = lqr(A, B, Q, R_lqr)        % Guany de realimentació

eig(A - B*KK)   % tots els valors propis han de tenir part real negativa

% ==========================================
% 4. DISSENY DE L'ESTIMADOR ÒPTIM (FILTRE DE KALMAN)
% ==========================================
Vd = 0.001 * eye(n);   
Vn = 0.001 * eye(n);
L = lqr(A', C', Vd, Vn)'       % Guany de Kalman (problema dual)

eig(A - L*C)

% Matrius de l'observador per al bloc State-Space
Akf = A - L*C;
Bkf = [B, L];
Ckf = eye(4);
Dkf = zeros(4, 5); % 4 sortides, i 5 entrades (1 de la 'u' + 4 de la 'y')
