clear;clc
load data2.mat  %����Ԥ����õİ�������
[n,p] = size(x); %n������������p��ָ�����
%% ������x��׼��ΪX����׼������
X=zscore(x); 
%% �����������ϵ������
R = cov(X);   
disp('�������ϵ������Ϊ��')
disp(R)
%% ��������ֵ�͹�����
[V,D] = eig(R);     %ʹ��diag�����õ�һ����������Խ���Ԫ��ֵ
lambda = diag(D);   %��������ֵ
lambda = lambda(end:-1:1);  %�����ݴӴ�С����
disp('����ֵΪ��')
disp(lambda') 
contribution_rate = lambda / sum(lambda);  %���㹱����
disp('������Ϊ��')
disp(contribution_rate')
%% δ��ɲ��֣�
%% �����ۼƹ�����
%% �������ɷֵ�ֵ
%% ����㷨�õ��ľ���֪ʶ��û�̹�����˻�����ѧ�����ѧ֪ʶ�Լ�����
