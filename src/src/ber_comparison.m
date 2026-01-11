% BER Comparison between BPSK and QPSK
run('bpsk_awgn.m');
hold on;
run('qpsk_awgn.m');
legend('BPSK', 'QPSK');
