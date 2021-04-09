%% 1
sys = tf([1 2 5],[1 2 2 1]);
rlocus(sys)
%rlocus(sys,-10:.0001:10)
k=6;
T = feedback(sys*k,1);
step(T)
%% 3

sys = tf([10 0 100],[1 0 20 0]);
rlocus(sys)
%rlocus(sys,-10:.0001:10)
%k=6;
%T = feedback(sys*k,1);
%step(T)
