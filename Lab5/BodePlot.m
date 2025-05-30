%% amplitude and measured frequency response
freq = [10.058, 15.832, 25.146, 39.861, 63.144, 100.024, 158.511, 251.271, ...
        398.047, 630.878, 1000.054, 1584.925, 2511.963, 3981.031, 6309.524, 9999.983];
gain_dB = [0.215, 0.144, -0.082, -0.452, -1.236, -2.877, -5.218, -8.114, ...
           -11.142, -13.827, -15.647, -16.171, -15.124, -12.309, -7.522, 0.444];

amplitude = 10.^(gain_dB / 20);

figure;
semilogx(freq, gain_dB, '-o','LineWidth',1.5);
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
title('Bode Plot: Gain vs Frequency');
grid on;
xlim([10 10000]);
ylim([-20 2]);
saveas(gcf, "C:/Users/Brandon/Repositories/140/Lab5/MeasuredFrequencyResponse.png");

figure;
semilogx(freq, amplitude, '-o','LineWidth',1.5);
xlabel('Frequency (Hz)');
ylabel('Amplitude Ratio (Vout/Vin)');
title('Measured Amplitude vs Frequency');
grid on;
xlim([10 10000]);
saveas(gcf, "C:/Users/Brandon/Repositories/140/Lab5/BodePlotAmplitude.png");

%% theoretical frequency response

%component values
R5 = 15.9e6;
C5 = 1e-6; 
R6 = 159e3; 
C6 = 0.01e-6;
R7 = 6.8e3;

Av = 1 + R6/R7; %non-inverting amplifier gain

f_low = 1/(2*pi*R5*C5); %cutoff frequencies
f_high = 1/(2*pi*R6*C6);

fprintf('Low cutoff frequency: %.4f Hz\n', f_low);
fprintf('High cutoff frequency: %.4f Hz\n', f_high);

freq = logspace(-3, 4, 1000); %frequency vector (log scale)
omega = 2*pi*freq;
omega_low = 2*pi*f_low;
omega_high = 2*pi*f_high;

H = Av .* (omega ./ omega_low) ./ sqrt(1 + (omega ./ omega_low).^2) ...
    ./ sqrt(1 + (omega ./ omega_high).^2); %bandpass filter gain
H_dB = 20*log10(H); %convert to dB

figure; %plotting
semilogx(freq, H_dB, 'r-', 'LineWidth', 2);
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
title('Theoretical Frequency Response of ECG Amplifier Filter Stage');
grid on;
xlim([10 10000]);
saveas(gcf, "C:/Users/Brandon/Repositories/140/Lab5/TheoreticalFrequencyResponse.png");
