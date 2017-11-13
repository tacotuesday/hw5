% Berghuis_Cook_init: Run this script to initialize the workspace for the
% HW5 Simulink file "Berghuis_Cook"

% Set environmental variables.
dt = 1e-4;
sinHz = [500 1000 1500];
sinFreq = sinHz.*2*pi;

% Establish pressure. Units: db (Hz), Pr (Pa), P (Pa).
db = 70;
Pr = 20e-6;
P = Pr*10^(db/20);

% Speaker system properties.
resFreq = 1000;
m = 0.125;
zeta = 0.125;
wn = 2*pi*resFreq;
k = m * wn^2;
c = 2*zeta*sqrt(m*k);

% Tuneable parameters.
alpha12 = .001;     % Convergence coefficient for questions 1 & 2.
% alpha3 = ;        % Convergence coefficient for question 3.

% Open the Simulink file.
% sim('Berghuis_Cook')