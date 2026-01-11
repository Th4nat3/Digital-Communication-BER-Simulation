# BER Performance of BPSK and QPSK over AWGN Channel

This repository presents a MATLAB-based simulation of Bit Error Rate (BER)
performance for BPSK and QPSK digital modulation schemes over an Additive White
Gaussian Noise (AWGN) channel.

The project is designed to demonstrate fundamental concepts in digital
communication systems, including modulation techniques, noise impact analysis,
and performance evaluation using BER metrics.

---

## Project Objectives
- Simulate BPSK and QPSK modulation schemes
- Evaluate BER performance under various Signal-to-Noise Ratio (SNR) conditions
- Compare robustness and data rate trade-offs
- Visualize system behavior using BER curves

---

## System Model
1. Random binary data generation  
2. Digital modulation (BPSK / QPSK)  
3. AWGN channel modeling  
4. Demodulation and BER calculation  

---

## Tools and Technologies
- MATLAB
- Digital Communication Theory
- Signal Processing (FFT, BER analysis)

---

## Results
The simulation results show that BPSK provides better noise robustness compared
to QPSK, while QPSK offers higher spectral efficiency at the cost of increased
sensitivity to noise.

---

## How to Run
1. Open MATLAB
2. Navigate to the `src` directory
3. Run:
   ```matlab
   ber_comparison
## Results
This section presents the BER performance results obtained from the simulation.

- BPSK demonstrates lower BER under low SNR conditions.
- QPSK achieves higher spectral efficiency with increased noise sensitivity.

