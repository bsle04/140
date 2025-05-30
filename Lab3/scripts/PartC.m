%%part c
data = readtable("C:\Users\Brandon\Repositories\140\Lab3\data\RigolDS2.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(ch1, ch2, 'b-');
xlabel('Vin (V)');
ylabel('Vout (V)');
title('Noninverting Amplifier (Unsaturated): Vout vs. Vin');
grid on;
saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab3\figures\Noninverting_Amp_Unsat_VoutVsVin.png');

data = readtable("C:\Users\Brandon\Repositories\140\Lab3\data\RigolDS3.csv");
time = data.Time_s_;
ch1 = data.CH1_V_;
ch2 = data.CH2_V_;

figure;
plot(ch1, ch2, 'b-');
xlabel('Vin (V)');
ylabel('Vout (V)');
title('Noninverting Amplifier (Saturated): Vout vs. Vin');
grid on;
saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab3\figures\Noninverting_Amp_Sat_VoutVsVin.png');