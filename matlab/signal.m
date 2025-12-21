
N = 512;
t = linspace(0, 5, N);
f_s = 100; % Sampling frequency (samples per second)
f_signal = 10; % Signal frequency in Hz
s = sin(2 * pi * f_signal * t);

% Positions aléatoires pour les pics
n_pics = 50;
positions = randperm(length(s), n_pics);

s(positions) = s(positions) + 8;
% Plot the signal
figure;
plot(t, s);
xlabel('Time (s)');
ylabel('Amplitude');
title('Modified Sine Wave Signal');
grid on;

% DFT of the signal
S = fft(s);
S_shifted = fftshift(S);
f = linspace(-f_s/2, f_s/2, N);

figure;
plot(f, abs(S_shifted));
xlabel('Fréquence f en Hz');
ylabel('Magnitude');
title('Frequency Spectrum');
grid on;

% Signal statistics
mean_x = mean(s);
std_x  = std(s);
fprintf('Mean: %.2f\n', mean_x);
fprintf('Standard Deviation: %.2f\n', std_x);

% Create the dataset and save to CSV
t = t(:);
s = s(:);

% Alternative 1 : Syntaxe plus simple
T = table(t, s);
T.Properties.VariableNames = {'time', 'value'};

% Alternative 2 : Avec cell array pour les noms
% T = table(t, s, 'VariableNames', {'time', 'value'});

writetable(T, 'signal.csv');
fprintf('Data saved to signal.csv\n');