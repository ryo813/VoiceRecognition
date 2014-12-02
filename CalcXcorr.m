% --- Calculate Xcorr ---

% read datas
wavname1 = 'VoiceData/a_1.wav';
wavname2 = 'VoiceData/i_1.wav';
wavname3 = 'VoiceData/ka_1.wav';
[data1,Fs1] = wavread(wavname1);
[data2,Fs2] = wavread(wavname2);
[data3,Fs3] = wavread(wavname3);

% normalization data
data1 = data1 / max(data1);
data2 = data2 / max(data2);
data3 = data3 / max(data3);

% calculate cross-correlation function
corr_data1 = xcorr(data1,data2);
corr_data2 = xcorr(data2,data3);
corr_data3 = xcorr(data1,data3);
corr_data4 = xcorr(data1,data1);

figure(1);
subplot(4,1,1); plot(corr_data1); ylim([-400, 400]);
subplot(4,1,2); plot(corr_data2); ylim([-400, 400]);
subplot(4,1,3); plot(corr_data3); ylim([-400, 400]);
subplot(4,1,4); plot(corr_data4); ylim([-400, 400]);