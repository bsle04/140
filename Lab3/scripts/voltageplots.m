%% part c
data = readtable("data\RigolDS3.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(time, ch1, 'b-', time, ch2, 'r--');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Noninverting Amplifier Saturated Plot');
legend('Vin', 'Vout');
grid on;

data2 = readtable("data\RigolDS2.csv");
uns_time = data2.Time_s_;
uns_ch1 = data2.CH1_V_;
uns_ch2 = data2.CH2_V_;

figure;
plot(uns_time, uns_ch1, 'b-', uns_time, uns_ch2, 'r--');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Noninverting Amplifier Unsaturated Plot');
legend('Vin', 'Vout');
grid on;

%%part d
data = readtable("data\RigolDS4.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(time, ch1, 'b-', time, ch2, 'r--');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Inverting Amplifier');
legend('Vin', 'Vout');
grid on;

data = readtable("data\RigolDS5.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(time, ch1, 'b-', time, ch2, 'r--');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Inverting Amplifier');
legend('Vin', 'Vout');
grid on;