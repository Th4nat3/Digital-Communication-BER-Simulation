% QPSK BER Simulation over AWGN Channel
% Author: Thanate Thongcharoen

clc; clear; close all;

N = 1e5;
snr_db = 0:2:14;
ber = zeros(size(snr_db));

% Generate random binary data
data = randi([0 1], N, 1);
data = reshape(data, [], 2);

% QPSK modulation
qpsk_signal = (2*data(:,1)-1) + 1j*(2*data(:,2)-1);
qpsk_signal = qpsk_signal / sqrt(2);

for k = 1:length(snr_db)
    % AWGN channel
    received = awgn(qpsk_signal, snr_db(k), 'measured');
    
    % Demodulation
    detected = zeros(size(data));
    detected(:,1) = real(received) > 0;
    detected(:,2) = imag(received) > 0;
    
    % BER calculation
    ber(k) = sum(detected(:) ~= data(:)) / numel(data);
end

% Plot BER curve
figure;
semilogy(snr_db, ber, 's-');
grid on;
xlabel('SNR (dB)');
ylabel('Bit Error Rate');
title('BER Performance of QPSK over AWGN Channel');
