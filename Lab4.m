%% low pass
f = [100, 1000, 3000, 10000, 30000, 100000, 1000000];

Ain = 998.46; % constant
Aout = [980.44, 980.44, 980.44, 938.72, 792.69, 417.20, 0];

G = Aout ./ Ain;

figure;
semilogx(f, G, '-o', 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Gain (A_{out} / A_{in})');
title('Gain vs Frequency - Low Pass RC Filter');
ylim([0 1.1]);

saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab4LowPass.png');

%% high pass
f = [1, 10, 30, 100, 300, 1000, 10000];
Ain = 998.46;
Aout = [0, 0, 354.62, 667.53, 938.72, 980.44, 980.44];

G = Aout ./ Ain;

figure;
semilogx(f, G, '-o', 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Gain (A_{out} / A_{in})');
title('Gain vs Frequency - High Pass RC Filter');
ylim([0 1.1]);

saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab4HighPass.png');

%% band pass
f = [1, 10, 30, 100, 300, 1000, 3000, 10000, 30000, 100000, 1000000];
Ain = 998.46;
Aout = [0, 0, 359.62, 667.53, 897.00, 980.44, 980.44, 938.72, 792.69, 438.07, 0];

G = Aout ./ Ain;

figure;
semilogx(f, G, '-o', 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Gain (A_{out} / A_{in})');
title('Gain vs Frequency - Band Pass RC Filter');
ylim([0 1.1]);

saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab4BandPass.png');

%% active band pass
f = [1, 10, 30, 100, 300, 1000, 3000, 10000, 30000, 100000, 1000000];
Ain = 998.46;
Aout = [0, 62.58, 229.46, 646.67, 897.00, 938.72, 959.58, 938.72, 855.27, 563.23, 0];

G = Aout ./ Ain;

figure;
semilogx(f, G, '-o', 'LineWidth', 2);
grid on;
xlabel('Frequency (Hz)');
ylabel('Gain (A_{out} / A_{in})');
title('Gain vs Frequency - Active Band Pass Filter');
ylim([0 1.1]);

saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab4ActiveBandPass.png');