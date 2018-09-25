clc
clear

n=1000000;%Ҫ���������
 
fid=fopen('d2d snr\d2d_sinr_random 10000.txt'); 
for i=1:n
    d2d_sinr_graph(i)=str2double(fgets(fid));
end 
fclose(fid);

fid=fopen('d2d_sinr_random.txt'); 
for i=1:n
    d2d_sinr_random(i)=str2double(fgets(fid));
end 
fclose(fid);

figure(1);
h1=cdfplot(d2d_sinr_graph);% ��matlab�л�ͼ����ʹ��cdfplot,�������
set(h1,'color','r','LineWidth',2);
hold on;

h2=cdfplot(d2d_sinr_random);% ��matlab�л�ͼ����ʹ��cdfplot,�������
set(h2,'color','b','LineWidth',2);

legend('graph-based','random','Location','southeast');


xlabel('SINR');
ylabel('CDF');
title('D2D SINR CDF')

