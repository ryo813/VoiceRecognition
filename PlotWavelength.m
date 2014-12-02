% --- Plot Wavelength ---
wavname = 'VoiceData/a_1.wav';

% data : Amplitude
% Fs   : Sampling rate
[data, Fs] = wavread(wavname);
data = data * 2^15;

figure(1);
plot(data);
xlabel('Sample','Fontsize',26);
ylabel('Amplitude','Fontsize',26);
set(gca,'Fontsize',22);