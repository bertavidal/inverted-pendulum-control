clear all; clc;

% ==========================================
% PARÀMETRES FÍSICS DEL PÈNDOL INVERTIT
% ==========================================
r   = 0.006;        % Radi del pinyó del motor [m]
M_c = 0.135;        % Massa del carro [kg]
m   = 0.1;          % Massa del pèndol [kg]
l   = 0.2;          % Longitud fins al CG del pèndol [m]
I   = 0.00072;      % Moment d'inèrcia del pèndol [kg·m²]
g   = 9.81;         % Gravetat [m/s²]
b   = 0.000078  ;   % Fricció viscosa al pivot del pèndol [N·m·s/rad]
c   = 0.63;         % Fricció viscosa del carro [N·s/m]
Rm  = 12.5;         % Resistència d'armadura del motor [Ω]
kb  = 0.031;        % Constant de força contraelectromotriu [V·s/rad]
kt  = 0.031;        % Constant de parell del motor [N·m/A]
Jm = 3.26e-8;
M  = M_c + Jm / r^2;   % ≈ 0.135 + 0.000906 ≈ 0.1359 kg
% Massa total efectiva del carro (≈M_c)

% ==========================================
% DERIVACIÓ DE LA MATRIU A (espai d'estats)
% ==========================================
% α = denominador comú
alpha = I*(M_c + m) + M_c*m*(l^2);  % [kg²·m²]

% Elements de la matriu A
aa =  (m^2 * l^2 * g) / alpha;                          % A(3,2)
bb =  ((I + m*l^2) / alpha) * (c + (kb*kt)/(Rm*r^2));   % -A(3,3)
cc =  (b * m * l) / alpha;                              % -A(3,4)
dd =  (m * g * l * (M_c + m)) / alpha;                  % A(4,2)
ee =  ((m*l) / alpha) * (c + (kb*kt)/(Rm*r^2));         % -A(4,3)
ff =  ((M_c + m) * b) / alpha;                          % -A(4,4)

% Elements de la matriu B (entrada: tensió Vm)
mm = ((I + m*l^2) * kt) / (alpha * Rm * r);  % B(3)
nn = (m * l * kt) / (alpha * Rm * r);        % B(4)

% ==========================================
% MODEL EN ESPAI D'ESTATS  x = [x, θ, ẋ, θ̇]
% ==========================================
% Entrada: tensió Vm [V]
A = [0,  0,   1,   0 ;
     0,  0,   0,   1 ;
     0,  aa, -bb, -cc ;
     0,  dd, -ee, -ff ];

B = [0 ; 0 ; mm ; nn];

% Sortida: tots 4 estats 
C = eye(4);
D = zeros(4, 1);

% Nombre d'estats
n = 4;

fprintf('Matriu A calculada:\n');  disp(A)
fprintf('Vector B calculat:\n');   disp(B)

% ==========================================
% COMPROVACIÓ: CONTROLABILITAT I OBSERVABILITAT
% ==========================================
rank_ctrb = rank(ctrb(A, B));
rank_obsv = rank(obsv(A, C));
fprintf('Rank controlabilitat: %d / %d\n', rank_ctrb, n);
fprintf('Rank observabilitat:  %d / %d\n', rank_obsv, n);

% ==========================================
% ESTIMADOR — FILTRE DE KALMAN
% ==========================================

% Vd: covariança del soroll de procés  (incertesa del model)
% Vn: covariança del soroll de mesura  (incertesa dels sensors)
Vd = 0.001 * eye(n); 
Vn = 0.001 * eye(n);

% Guany de Kalman L
L = lqr(A', C', Vd, Vn)';
fprintf('Guany Kalman L:\n'); disp(L)

% valors propis de l'observador
fprintf('Valors propis A-LC: '); disp(eig(A - L*C)')