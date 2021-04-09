%% Question 4
k=(0.02+0.5)/10;
k_m=10;
k_b=0.05;

T = tf(k*k_m, [1, 0.02+k_b*k_m, k*k_m]);

t=0:0.1:20;
alpha=1;
ramp=t;

[y,t]=lsim(T,ramp,t);
plot(t,y)
hold on
plot (t,t)

figure
step(T)



