%mesh: mathlab01.m
%Create: 19/01/2021, 08.00
%Modify: 26/01/2021, 16.00
%01076003 Circuits and Electronics (Laboratory)
%Laboratory 2nd: Basic to Circuit Analysis by MATLAB
%การทดลองที่ 2: การวิเคราะห์วงจรไฟฟ้าด้วย MATLAB เบ้ืองตน้
%อาจารย์ผู้สอน: ผศ.สรพงษ์ วชิรรัตนพรกุล
%Lecturer: Asst.Porf. SORAPONG WACHIRARATTANAPORNKUL

%ผู้ทำการทดลอง: จุไรรัตน์ แดงพวงไพบูลย์te
%รหัสนักศึกษา: 63010159
%การทดลองส่วนที่ 1 การวิเคราะห์วงจรด้วยวิธี Mesh
clear all;
clc;
for i=0:4
    V1=input('Please insert value of Voltage Source V1 = ');
    V2=input('Please insert value of Voltage Source V2 = ');
    R1=input('Please insert value of The Resister R1 = ');
    R2=input('Please insert value of The Resister R2 = ');
    R3=input('Please insert value of The Resister R3 = ');
    a=[(R1+R3) R3; R3 (R2+R3)]
    b=[V1 R3; V2 (R2+R3)]
    c=[(R1+R3) V1; R3 V2]
    I1=det(b)./det(a)
    I2=det(c)./det(a)
    IR3=I1+I2
    VR1=I1*R1
    VR2=I2*R2
    VR3=IR3*R3
    P1=I1*VR1
    P2=I2*VR2
    P3=IR3*VR3
end