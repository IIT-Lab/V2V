clc
clear

n=100000;%Ҫ���������
 
fid=fopen('d2d_sinr_random.txt'); 
for i=1:n
    d2d_sinr_random(i)=str2double(fgets(fid));
end 
fclose(fid);

fid=fopen('d2d_sinr_rl.txt'); 
for i=1:n
    d2d_sinr_rl(i)=str2double(fgets(fid));
end 
fclose(fid);

h1=cdfplot(d2d_sinr_random);% ��matlab�л�ͼ����ʹ��cdfplot,�������
set(h1,'color','b','LineWidth',2);

hold on;
h2=cdfplot(d2d_sinr_rl);% ��matlab�л�ͼ����ʹ��cdfplot,�������
set(h2,'color','r','LineWidth',2);

legend('random','reinforcement learning','Location','southeast');

xlabel('SINR');
ylabel('CDF');
title('D2D SINR CDF')
