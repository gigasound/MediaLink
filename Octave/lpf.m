clear all;
pkg load signal;
pkg load symbolic;

fs = 44100.0;
f0 =100.0;
NFFT = 1024;
Q=0.71; # butterworth, 2 order 

function  [coef_b, coef_a,coef_size] = LPF(fs,f0,Q)
  coef_size = 3;
  coef_b = zeros(coef_size,1);
  coef_a = zeros(coef_size,1);
  w0 = 2 * pi * f0 / fs;
  c0 = cos(w0);
  s0 = sin(w0);
  h = s0 /(2 * Q);
  b0 = (1 - c0)/2;
  b1 = 1 - c0;
  b2 = b0;
  a0 = 1 + h;
  a1 = -2 * c0;
  a2 = 1 - h;
  coef_b(1,1) = b0 / a0;
  coef_b(2,1) = b1 / a0;
  coef_b(3,1) = b0 / a0;
  coef_a(1,1) = 1;
  coef_a(2,1) = a1 / a0;
  coef_a(3,1) = a2 / a0;
endfunction

[b,a]=LPF(f0,fs,Q);
[h,w]=freqz(b,a,NFFT,fs);
m = 20.0*log10(abs(h));

figure(1);
clf;
zplane(b,a);
figure(2);
clf;
subplot(2,1,1)
semilogx(w,m)
xlim([20 44100/2])
ylim([-90 10])
xlabel("frequency(Hz)")
ylabel("magitude(dB)")
grid()
subplot(2,1,2)
semilogx(w,arg(h)*180/pi)
xlim([20 44100/2])
ylim([-200 200])
xlabel("frequency(Hz)")
ylabel("phase(deg)")
grid()
