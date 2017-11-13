% Berghuis_Cook_init: Run this script to initialize the workspace for the
% HW5 simulink file "Berghuis_Cook"

% Set the time step
dt = 1e-4;

% Establish pressure. Units: db (Hz), Pr (Pa), P (Pa).
db = 70;
Pr = 20e-6;
P = Pr*10^(db/20);

% Set dynamic system variables
resFreq = 1000;
m = 0.125;
zeta = 0.125;
wn = 2*pi*resFreq;
k = m * wn^2;
c = 2*zeta*sqrt(m + k);

% Open the Simulink file.
% sim('Berghuis_Cook')