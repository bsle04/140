%%part d
data = readtable("data\RigolDS4.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(time, ch1, 'b-', time, ch2, 'r--');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Inverting Amplifier (Unsaturated): Voltages vs. Time');
legend('Vin', 'Vout');
grid on;
saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab3\figures\Inverting_Amp_Unsat_VoltageVsTime');

data = readtable("data\RigolDS5.csv");
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
saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab3\figures\Inverting_Amp_Sat_VoltageVsTime');