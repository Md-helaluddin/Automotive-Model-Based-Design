% Master_Setup.m
% Run this to load ALL variables and open the model

clear; clc;

% --- 1. Define Battery Parameters ---
V_in = 12;        % Battery Voltage (Volts)
R_bat = 0.01;      % Internal Resistance (Ohms)
Capacity = 5;     % Battery Capacity (Ah)

% --- 2. Define Motor Parameters ---
R = 1;            % Resistance
L = 0.5;          % Inductance (Optional)
K = 0.01;         % Motor Constant
J = 0.01;         % Inertia
b = 0.1;          % Damping
% --- Gearbox Parameters ---
G_ratio = 10;     % Gear Ratio

% --- Vehicle Parameters ---
r_tire = 0.3;     % Tire Radius (0.3 meters)
m_car = 1000;     % Car Mass (1000 kg)
rho = 1.225;      % Air Density (how thick the air is)
Cd = 0.3;         % Aerodynamic Drag (how streamlined the car is)
Area = 2.5;       % Frontal Area (how big the front of the car is)

disp('SUCCESS: All Battery and Motor variables loaded!');

% --- 3. Open the Simulink Model ---
% We use 'Motor_Test.slx' because that is where your full circuit is now.
if isfile('Vehicle_plant.slx')
    open_system('Vehicle_plant.slx');
    disp('Simulink model opened.');
else
    disp('Error: Could not find the Vehicle_plant.slx');
end