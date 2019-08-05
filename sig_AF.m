close all;
clear all;
clc;
x=-10:0.1:10;
% lamba=1 (slope)
y1=(1./(1+exp(-x)));
y2=(2./(1+exp(-x)))-1;

n=length(x);
for i=1:n
    if x(i)>0
        y3(i)=1;
        y4(i)=1;
    else
         y3(i)=0;
         y4(i)=-1;

    end;
end;
% plotting scheme 1 - Individual Figure windows
% figure(1);plot(x,y1);title('Binary soft limit Sigmoidal AF');
% figure(2);plot(x,y2);title('Bipolar soft limit Sigmoidal AF');
% figure(3);plot(x,y3);title('Binary hard limit Sigmoidal AF');
% figure(4);plot(x,y4);title('Bipolar hard limit Sigmoidal AF');

% plotting scheme 2 - Dividing Figure windows
% subplot(221);plot(x,y1);title('Binary soft limit Sigmoidal AF');
% subplot(222);plot(x,y2);title('Bipolar soft limit Sigmoidal AF');
% subplot(223);plot(x,y3);title('Binary hard limit Sigmoidal AF');
% subplot(224);plot(x,y4);title('Bipolar hard limit Sigmoidal AF');

% plotting scheme 3 - Merging Figure windows
plot(x,y1,'r');hold on;
plot(x,y2,'g');hold on;
plot(x,y3,'--m');hold on;
plot(x,y4,'--c');hold off;
legend('y1','y2','y3','y4');