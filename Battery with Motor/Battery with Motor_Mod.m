% setup_params.m
% Run this file to load variables AND open the model

clear; clc;

% --- 1. Define Battery Parameters ---
V_in = 12;        % Battery Voltage (Volts)
R_bat = 0.5;      % Internal Resistance (Ohms)
Capacity = 5;     % Battery Capacity (Ah)



disp('Variables loaded successfully!');

% --- 3. Open the Simulink Model ---
% Make sure your Simulink file is saved as 'Project_Model.slx'

    open_system('Battery_Model.slx');
    