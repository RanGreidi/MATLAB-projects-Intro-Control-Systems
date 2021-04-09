%getting results using class formula's
clear all
syms s
C_1=[1 0 0];
S_1=[s -1 0 ; 0 s -1; 4 5 s+8];
B_1=[0;0;4];
T_1=C_1*inv(S_1)*B_1;
disp(T_1)

clear all
syms s
C_2=[0.7071 -0.7071 0];
S_2=[s-0.5 -0.5 -0.7071 ;0.5 s+0.5 -0.7071;6.364 0.7071 s+8];
B_2=[0;0;4];
T_2=C_2*inv(S_2)*B_2;
disp(T_2)

% getting results using matlab functions
clear all
A_1=[0 1 0;0 0 1;-4 -5 -8];
B_1=[0;0;4];
C_1=[1 0 0];
D_1=[0];
sys_1=ss(A_1,B_1,C_1,D_1);
[b,a] = ss2tf(A_1,B_1,C_1,D_1);
disp(b)
disp(a)
A_2=[0.5 0.5 0.7071;-0.5 -0.5 0.7071;-6.364 -0.7071 -8.000];
B_2=[0;0;4];
C_2=[0.7071 -0.7071 0];
D_2=[0];
sys_2=ss(A_2,B_2,C_2,D_2);
[c,d] = ss2tf(A_2,B_2,C_2,D_2);
disp(c)
disp(d)
%a equals c and b equals d thus two systems are equals 
%% Question 4

A=[0 1; -2 -3];
B=[0;1];
C_1=[1 0; 0 1]; %to get x_1 and x_2 the same time
D=0;

x_0=[1 0];
sys=ss(A,B,C_1,D);

t = 0:0.05:10;
u=zeros(length(t), 1);
lsim(sys,u,t,x_0)

%% Question 5

A=[0 1 0;0 0 1;-3 -2 -5];
B=[0;0;1];
C=[1 0 0];
D=0;

sys=ss(A,B,C,D);
tf_func=tf(sys);
tf(sys)
x_0=[0 -1 1];
t = 0:0.05:10;

lsim(sys,zeros(length(t), 1),t,x_0)

%3
syms t
trasfer_mat=expm(A);
trasfer_mat
phi = expm(A*10);
phi*transpose(x_0)

