% Master_Setup.m
% Run this to load ALL variables and open the model

clear; clc;

% --- 1. Define Battery Parameters ---
V_in = 12;        % Battery Voltage (Volts)
R_bat = 0.5;      % Internal Resistance (Ohms)
Capacity = 5;     % Battery Capacity (Ah)

% --- 2. Define Motor Parameters ---
R = 1;            % Resistance
L = 0.5;          % Inductance (Optional)
K = 0.01;         % Motor Constant
J = 0.01;         % Inertia
b = 0.1;          % Damping
% --- Gearbox Parameters ---
G_ratio = 10;     % Gear Ratio

disp('SUCCESS: All Battery and Motor variables loaded!');

% --- 3. Open the Simulink Model ---
% We use 'Motor_Test.slx' because that is where your full circuit is now.
if isfile('Gear.slx')
    open_system('Gear.slx');
    disp('Simulink model opened.');
else
    disp('Error: Could not find the Gear.slx');
end