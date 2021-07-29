function aread
[y,Fs]=audioread("Recording.m4a");
n=16384; freq=16000*(0:(n/2)-1)/n;
f=fft(y(:,1),n);
plot(freq,abs(f(1:n/2)),'');
end

