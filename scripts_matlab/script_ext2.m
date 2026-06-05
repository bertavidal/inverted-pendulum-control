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
b   = 0.000078;     % Fricció viscosa al pivot del pèndol [N·m·s/rad]
c   = 0.63;         % Fricció viscosa del carro [N·s/m]
Rm  = 12.5;         % Resistència d'armadura del motor [Ω]
kb  = 0.031;        % Constant de força contraelectromotriu [V·s/rad]
kt  = 0.031;        % Constant de parell del motor [N·m/A]
Jm  = 3.26e-8;

M   = M_c + Jm / r^2;   % Massa total efectiva del carro

% ==========================================
% DERIVACIÓ DE LA MATRIU A (espai d'estats)
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

% ==========================================
% MODEL EN ESPAI D'ESTATS  x = [x, θ, ẋ, θ̇]
% ==========================================
A = [0,  0,   1,   0 ;
     0,  0,   0,   1 ;
     0,  aa, -bb, -cc ;
     0,  dd, -ee, -ff ];

B = [0 ; 0 ; mm ; nn];

% Sortida: només sensors de posició i angle
C = [1 0 0 0;
     0 1 0 0];
D = zeros(2,1);

n = 4;

fprintf('Matriu A calculada:\n');  disp(A)
fprintf('Vector B calculat:\n');   disp(B)

% ==========================================
% ESTIMADOR — FILTRE DE KALMAN
% ==========================================
Vd = 0.001 * eye(n);
Vn = 0.001 * eye(2);

L = lqr(A', C', Vd, Vn)';

fprintf('Cas base — Guany Kalman L:\n'); disp(L)
fprintf('Cas base — eigs(A-LC): ');
disp(eig(A - L*C)')

% ==========================================
% EXTENSIÓ 2: VARIACIÓ DE Vd i Vn
% ==========================================
casos = {
    0.001, 0.001;   % cas base
    0.1,   0.001;   % model incert
    0.001, 0.1;     % sensors sorollosos
    10,    0.001;   % model molt incert
    0.001, 10       % sensors molt sorollosos
};

for i = 1:5
    Vd_i = casos{i,1} * eye(n);   % 4x4
    Vn_i = casos{i,2} * eye(2);   % 2x2

    L_i  = lqr(A', C', Vd_i, Vn_i)';

    fprintf('Cas %d\n', i);
    fprintf('Vd = %.4g · I4,   Vn = %.4g · I2\n', casos{i,1}, casos{i,2});
    fprintf('Guany Kalman L_i:\n');
    disp(L_i)

    fprintf('Valors propis de A - L_i C:\n');
    disp(eig(A - L_i*C)')
    fprintf('\n');
end