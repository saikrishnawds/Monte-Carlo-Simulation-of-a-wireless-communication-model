# Monte-Carlo-Simulation-of-a-wireless-communication-model
This repository contains the files that perform Monte Carlo simulation on a wireless communication channel using confidence intervals.

This mini-project explores the use of confidence intervals when estimating the bit-error-rate (BER) or probability of bit error for a simple, digital communications system.

After appropriate filtering and sampling, the received sample for a particular bit period can be modeled as
𝑅= (Eb.B)^0.5 + [(N0/2)^0.5].N

where 𝐸𝑏 is the energy-per-bit, 𝑁0 is the noise power spectral density, 𝐵 is the transmitted bit value (+1 or –1) and 𝑁 is normalized Gaussian noise with mean zero and variance 1. 


Project description

In this project, we will use MATLAB® (ML) to simulate received values and estimate BER. Bit values are equi-likely, so use detection threshold 0 so that the BER is the same for +1 and -1 bit values. Assume -1 values are sent and define a bit error as the event 𝑅 > 0 | 𝐵 = -1. Define 𝑋 to be 0 if no error occurred and 1 if an error occurred.

From analysis, we known that the true BER is given by
BER=0.5 erfc([Eb/N0]^0.5)

where erfc is the complementary error function. We will use this to evaluate our confidence intervals.
Simulate m trials. For each trial, generate n received values and use the sample mean of 𝑋 to estimate BER. Use the randn function in ML. Initialize the random number generator using rng(seed,’twister’), where seed is set to an integer determined by certain vowels in your first and last name (A=16, E=64, I=256, O = 512, U = 1024) by summing the numbers corresponding to the vowels present. For example, “Jane Jones” would give the seed 16 (a) + 64 (e) + 512 (o) + 64 (e) = 656 (include in report).

• Determine the 68.3% confidence interval using the known variance of 𝑋 (see class notes or derive yourself). This will give a lower and upper confidence interval boundary. From the m trials, determine the fraction of trials for which the true BER fell within the confidence interval. For the first 10 trials, plot a) the sample mean of 𝑋, b) the lower confidence interval boundary, c) the upper confidence interval boundary, and d) the true BER (same for all trials). Label the x axis and provide a legend to indicate which curve is which.

• Repeat using the estimated (sample) variance of 𝑋.
Use m=100 and produce results for n=10, 100, and 1000. Set Eb/N0 = -3 dB (0.5).
