clear;clc
load data2.mat  %网上预处理好的案例数据
[n,p] = size(x); %n是样本个数，p是指标个数
%% 对数据x标准化为X，标准化处理
X=zscore(x); 
%% 计算样本相关系数矩阵
R = cov(X);   
disp('样本相关系数矩阵为：')
disp(R)
%% 计算特征值和贡献率
[V,D] = eig(R);     %使用diag函数得到一个矩阵的主对角线元素值
lambda = diag(D);   %计算特征值
lambda = lambda(end:-1:1);  %将数据从大到小排序
disp('特征值为：')
disp(lambda') 
contribution_rate = lambda / sum(lambda);  %计算贡献率
disp('贡献率为：')
disp(contribution_rate')
%% 未完成部分：
%% 计算累计贡献率
%% 计算主成分的值
%% 这个算法用到的矩阵知识都没教过，因此还在自学相关数学知识以及代码
