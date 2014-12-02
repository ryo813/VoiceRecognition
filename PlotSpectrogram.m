% --- Plot Spectrogram ---
[data,Fs] = wavread('VoiceData/a_1.wav');
window = 320;	% window width
shift = 160; 	% overlap time
fftN  = 512;	% FFT length

spectrogram(data, hamming(window),...
                    shift, fftN, Fs, 'yaxis');