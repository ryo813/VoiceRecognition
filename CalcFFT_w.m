% --- Convert frequency region ---
% read data
wavname   = 'VoiceData/a_1.wav';
[data,Fs] = wavread(wavname);
% condition of dft
shift = 160;
width = 320;
% extract window
block = floor( length(data)/shift -1 );
ham = 0.54 - 0.46*cos(2*pi*[0:1/(width-1):1]);
for i = 1 : block
	ts = shift*(i-1) + 1;
	tf = shift*(i+1);
	data_t(i,:) = data(ts:tf) .* ham';
end
figure(1);plot(data_t(1,:));
xlabel('Sample','Fontsize',26);
ylabel('Amplitude','Fontsize',26);
set(gca,'Fontsize',22);
% FFT
fftN = 512;   % sampling rate
for i = 1 : block
	tmp = fft(data_t(i,:), fftN);
	pow = real(tmp).^2 + imag(tmp).^2;
	data_f(i,:) = pow(1:fftN/2);
end
% plotdata
figure(2); plot(data_f(1,:));
xlabel('Frequency','Fontsize',26);
ylabel('DFT value','Fontsize',26);
set(gca,'Fontsize',22);