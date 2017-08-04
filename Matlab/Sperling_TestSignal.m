
%--------------------------------------------------------------------------
%                SPERLING RIDE QUALITY AND COMFORT                        -
%--------------------------------------------------------------------------
clear all
clc
global wz;
global wr;
global w;

% colors: magenta,cyan,red, green, blue, black
LineColors       = {'m','c','r','g','b','x'}';
Fs = 1000;          % 1kHz sample rate
t = 0:1/Fs:1;      % 1 seconds @ 1kHz sample rate
fo = 1; f1 = 400;   % Start at 10Hz, go up to 400Hz
y = chirp(t,fo,10,f1)';
signal = zeros(1001,3);
signal(:,1) = y;
signal(:,2) = y;
signal(:,3) = y;
%signal = cat(3, y,y,y);
%**************************************************************************
%-------------------- Sperling Index --------------------------------------
%**************************************************************************

grid on;
[WZ, WR] = sperling(signal,Fs);
%Freq = w/2*pi;
%semilogx(Freq,20*log10(WZ(1:,)),'m');
hold on;
%------------------- ISO2631 on Wd ----------------------------------------

% title('ISO2631 � BS 6841 ������������ �������� �������');
% axis([0.01 1000 -30 10]);
% xlabel('������� (Hz)');
% ylabel('��������� (dB)');
grid on;
hold off;
%**************************************************************************
%-------------------- EOF -------------------------------------------------
%**************************************************************************