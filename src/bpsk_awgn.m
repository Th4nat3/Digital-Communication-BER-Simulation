% BPSK BER Simulation over AWGN Channel
% Author: Thanate Thongcharoen

clc; clear; close all;

N = 1e5;                 % Number of transmitted bits
snr_db = 0:2:14;         % SNR range in dB
ber = zeros(size(snr_db));

% Generate random binary data
data = randi([0 1], N, 1);

% BPSK modulation
bpsk_signal = 2*data - 1;

for k = 1:length(snr_db)
    % AWGN channel
    received = awgn(bpsk_signal, snr_db(k), 'measured');
    
    % Demodulation
    detected = received > 0;
    
    % BER calculation
    ber(k) = sum(detected ~= data) / N;
end

% Plot BER curve
figure;
semilogy(snr_db, ber, 'o-');
grid on;
xlabel('SNR (dB)');
ylabel('Bit Error Rate');
title('BER Performance of BPSK over AWGN Channel');
