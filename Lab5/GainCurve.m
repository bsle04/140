% Input and output voltages
Vin = [1, 1.5, 2, 5, 10, 15, 20, 30]; %mV
Vout = [2.1658, 2.5990, 3.0321, 6.0643, 11.262, 16.027, 21.225, 29.888]; %V
Vout = Vout .* 1000; %convert to mV

% Calculate gain as Vout / Vin
Gain = Vout ./ Vin;

% Plot the gain curve
figure;
plot(Vin, Gain, '-o', 'LineWidth', 2, 'MarkerSize', 6);
xlabel('Input Voltage (mV)');
ylabel('Gain (Vout/Vin)');
title('ECG Amplifier Gain Curve');
grid on;

saveas(gcf, "C:/Users/Brandon/Repositories/140/Lab5/GainCurve.png");