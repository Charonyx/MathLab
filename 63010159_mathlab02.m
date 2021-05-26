%responsetest: mathlab02.m
%Create: 19/01/2021, 08.05
%Modify: 26/01/2021, 16.15
%01076003 Circuits and Electronics (Laboratory)
%Laboratory 2nd: Basic to Circuit Analysis by MATLAB
%การทดลองที่ 2: การวิเคราะห์วงจรไฟฟ้าด้วย MATLAB เบื้องต้น
%อาจารย์ผู้สอน: ผศ.สรพงษ์ วชิรรัตนพรกุล
%Lecturer: Asst.Porf. SORAPONG WACHIRARATTANAPORNKUL

%ผู้ทำการทดลอง: จุไรรัตน์ แดงพวงไพบูลย์
%รหัสนักศึกษา: 63010159
%การวิเคราะห์หาผลการตอบสนองทางความถี่ และทางเฟส

clear all;
clc;

V1=input('Please insert value of Voltage Source V1 = ');
R1=input('Please insert value of The Resister R1 = ');
C1=input('Please insert value of The Capacitor C1 = ');
RL=input('Please insert value of The Resister Load RL = ');

%w=10e2:10e3:10e7;
w=10e-2:10e-1:10e6;
w1=w.*(2.*pi);
s=1i*w1;

n1=1/R1;
d1=((1/R1)+(1/RL)+(s.*C1));

tr1=20.*log10(abs(n1./d1));
pr1=angle(n1./d1);

figure(1)
semilogx(w,tr1,'b'),...
%axis([10e2 10e7 -80 -20]),...
axis([0 10e6 -70 0]),...
xlabel('FREQUENCY(Hz)'),...
ylabel('MAGNITUDE(dB)'),...
grid

figure(2)
semilogx(w,pr1,'r')
%axis([10e2 10e7 -10 5]),...
axis([0 10e6 -2 1]),...
xlabel('FREQUENCY(Hz)'),...
ylabel('Phase'),...
grid