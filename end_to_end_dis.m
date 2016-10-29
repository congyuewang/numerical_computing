clc;
fileID = fopen('C:\Users\congyue wang\Documents\Visual Studio 2012\Projects\l=16_center_z_0\16  0.000 _____\F--01\Outputs\DataToAnalyze\E-HBns-R\end_to_end_dis.txt');

c=textscan(fileID,'%f %s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f');



round(mean(c{23}/10)-0.2)