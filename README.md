# Monte-Carlo-Simulation-of-a-wireless-communication-model
This repository contains the files that perform Monte Carlo simulation on a wireless communication channel using confidence intervals.

This mini-project explores the use of confidence intervals when estimating the bit-error-rate (BER) or probability of bit error for a simple, digital communications system.

After appropriate filtering and sampling, the received sample for a particular bit period can be modeled as
𝑅=√𝐸𝑏𝐵+√𝑁02⁄𝑁
where 𝐸𝑏 is the energy-per-bit, 𝑁0 is the noise power spectral density, 𝐵 is the transmitted bit value (+1 or –1) and 𝑁 is normalized Gaussian noise with mean zero and variance 1. Thus, the signal has energy (mean-square value) 𝐸𝑏 and the noise has energy 𝑁02⁄, giving a signal-to-noise ratio (SNR) of 2𝐸𝑏𝑁0⁄, where 𝐸𝑏𝑁0⁄ is a conventional, normalized SNR used in the digital communications literature.
