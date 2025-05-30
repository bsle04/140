Vin = [2.0, -2.0, 1.5, -1.5, 1.0, -1.0, 0.5, -0.5, 0.2, -0.2];
Vout = [-13.90, 14.85, -13.90, 14.85, -9.83, 9.86, -4.882, 4.899, -2.207, 2.221];

[Vin_sorted, idx] = sort(Vin);
Vout_sorted = Vout(idx);
figure;
plot(Vin_sorted, Vout_sorted, 'o-', 'LineWidth', 2);
xlabel('Vin (V)');
ylabel('Vout (V)');
title('Inverting Amplifier: Vout vs. Vin');
grid on;

saveas(gcf, 'C:\Users\Brandon\Repositories\140\Lab3\figures\inverting_amplifier_vinvout.png');  % or use exportgraphics below
