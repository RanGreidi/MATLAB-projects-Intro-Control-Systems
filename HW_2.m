%% Quastion 1
%see function below
%% Question 2
%sys1
sys1 = tf([1 1],[1 -1 6]);
[poles1,zeros1]=pzplot2([1 1],[1 -1 6 ],'zeros and poles of system 1');
figure
step(sys1)
title('step response of system 1')
%impulse(sys1)
%t=0:0.1:10000;
%y=exp((0.5)*t).*(((3/sqrt(23)))*sin((sqrt(23)/2)*t)+cos((sqrt(23)/2)*t));
%plot(t,y,'.g')

%sys2
sys2=tf([2 1 -1],[3 -2 6]);
figure
step(sys2)
title(' step response of system 2')

[poles2,zeros2]=pzplot2([2 1 -1],[3 -2 6 ],'zeros and poles of system 2');

%sys3
sys3=tf([1 6],[1 3 2]);
figure
t=0:0.1:10;
y=3+2*exp(-2*t)-5*exp(-t); %check analytic sulotion
plot(t,y,'.g')
hold on
step(sys3)
title(' step response of system 3')
[poles3,zeros3]=pzplot2([1 6],[1 3 2 ],' zeros and poles of system 3');

%sys4

sys4=tf([1],[1 4 4]);
figure
t=0:0.1:10;
y=(1/4)*(1-exp(-2*t)-2*t.*exp(-2*t)); %check analytic sulotion
plot(t,y,'.g')
hold on
step(sys4)
title(' step response of system 4')
[poles4,zeros4]=pzplot2([1],[1 4 4],' zeros and poles of system 4');

%% Question 5
for i=[2 5 10]
    TF=tf([1],[i 1]);   
    figure
    step(TF)
    syms s
    SR =1/(1+s*i);   
    disp(i)
    disp(ilaplace(SR))
    
end
%% Question 6
sys=tf([5000],[1 20 1000 5000]);
step(sys)
hold on
t=0:0.01:10; y = exp(-7.28)*(0.056*cos(-29.45*t) + 0.18*sin(-29.45*t)) - 1.059*exp(-5.42*t) + 1.0024 ; plot(t,y,'.g')

function [poles, zeros] = pzplot2(a, b,c)
    roots_numerator=roots(a);
    roots_denumerator=roots(b);
    zeros=roots_numerator;
    poles=roots_denumerator;
    %build the grid
    m=[roots_numerator;roots_denumerator];    
    Max_value=max(abs(m));
    Max_real_value=max(real(roots_denumerator));
    
    x_zeros=real(roots_numerator);
    y_zeros=imag(roots_numerator);
    x_poles=real(roots_denumerator);
    y_poles=imag(roots_denumerator);
    
    figure
    hold on
    scatter(x_zeros, y_zeros,'o')
    scatter(x_poles, y_poles,'x')
    axis([-Max_value-1 Max_value+1 -Max_value-1 Max_value+1])
    
    x_roc=[Max_real_value Max_real_value  Max_value+1 Max_value+1];
    y_roc=[-Max_value-1    Max_value+1    Max_value+1 -Max_value-1];
    patch(x_roc,y_roc,'y','LineStyle','none')
    alpha(0.3)
    grid on
    xL = xlim;
    yL = ylim;
    line([0 0], yL);  %y-axis
    line(xL, [0 0]);  %x-axis
    xlabel('real axis') 
    ylabel('imag axis') 
    title(c)
    
end 