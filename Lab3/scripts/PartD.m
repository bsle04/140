%%part d
data = readtable("C:\Users\Brandon\Repositories\140\Lab3\data\RigolDS4.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(time, ch1, 'b-', time, ch2, 'r--');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Summing Circuit (Unsaturated): Voltages vs. Time');
legend('Vin', 'Vout');
grid on;
saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab3\figures\Summing_Circuit_Unsat_VoltageVsTime.png');

data = readtable("C:\Users\Brandon\Repositories\140\Lab3\data\RigolDS5.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(time, ch1, 'b-', time, ch2, 'r--');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Inverting Amplifier (Saturated): Voltages vs. Time');
legend('Vin', 'Vout');
grid on;
saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab3\figures\Inverting_Amp_Sat_VoltageVsTime.png');