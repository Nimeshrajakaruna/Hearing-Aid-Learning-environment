close all;
clc;

open('hearing_aid_final_model.slx');
sim('hearing_aid_final_model.slx');

%exploting snr calculation formula
calc = snr(in_total_signal, out_total_signal);

%ration of the power density spectrum between input total signal and output total signal
ratio_power_density_spectrum = 10^(calc/10); 

disp('ratio');
disp(ratio_power_density_spectrum);

if ratio_power_density_spectrum > 1
    disp('Filtering is successful');
else
    disp('Filtering is unsuccessful');
end

