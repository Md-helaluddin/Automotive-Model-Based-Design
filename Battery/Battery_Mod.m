% Master_Setup.m
% Run this to load EVERYTHING (Battery + Motor)

clear; clc;

% --- Battery Variables ---
V_in = 12;        % Battery Voltage
R_bat = 0.5;      % Battery Resistance
Capacity = 5;     % Battery Capacity (Ah)  <-- This is the one missing!

% --- Motor Variables ---
R = 1;            % Motor Resistance
L = 0.5;          % Motor Inductance
K = 0.01;         % Motor Constant
J = 0.01;         % Inertia
b = 0.1;          % Damping

disp('SUCCESS: Battery AND Motor variables are now loaded!');