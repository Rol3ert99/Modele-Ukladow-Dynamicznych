clear all;
close all;

%wartości A1 i A2 wyznaczone analitycznie na kartce
A1 = 1/21;
A2 = -5/7;

%pierwiastki równania charakterystycznego-wyznaczone analitycznie
lambda1 = -3;
lambda2 = -1/5;

%rozwiązanie wymuszone-wyznaczone analitycznie
Xw = 2/3;

%wykresy
t=[0:0.1:30];
Xs1 = A1*exp(lambda1*t);
Xs2 = A2*exp(lambda2*t);
Xs = Xs1 + Xs2;
X = Xs + Xw;
figure(1);
hold on;
plot(t, Xs1, 'r:');
plot(t, Xs2, 'b:');
plot(t, Xs, 'g--');
St = ones(1, length(t));
plot(t, St*Xw, '--');
plot(t, X, 'b');
title('Rozwiązanie analityczne dla u(t)=1(t)');
xlabel('t [s]');
ylabel('odpowiedź układu');
legend('Xs1', 'Xs2', 'Xs', 'Xw', 'X', 'FontSize', 18);










