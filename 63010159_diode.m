%diode.m
%Create: 23/04/2021, 22.45
%Modify:
%01076003 Circuits and Electronics (Laboratory)
%Laboratory 11 : Dilode
%การทดลองที่ 11: การประยุกต์ใช้งานไดโอด
%อาจารย์ผู้สอน: ผศ.สรพงษ์ วชิรรัตนพรกุล
%ผู้ทำการทดลอง: จุไรรัตน์ แดงพวงไพบูลย์
%รหัสนักศึกษา: 63010159
clear all;
clc;

for i=1:3
    V = input('Please insert value of Voltage Source V = ');
    Vd = input('Please insert value of Voltage Diode Vd = ');
    Id = input('Please insert value of Current Diode Id = ');

    R = (V-Vd)/Id
end