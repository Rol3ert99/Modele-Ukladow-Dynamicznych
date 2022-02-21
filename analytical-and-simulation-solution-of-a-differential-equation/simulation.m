clear all;
close all;
%--------------------------------------------------------------------------
%współczynniki równania różniczkowego
a = 5;
b = 16;
c = 3;
k = 2;
%--------------------------------------------------------------------------
%zakłócenie
u0 = 0;
du = 1;
step_time = 1;
%--------------------------------------------------------------------------
%stan równowagi
x0 = 0;
x10 = 0;
%--------------------------------------------------------------------------
%symulacja
model = 'simulation_sim';
czas_symulacji = 30;
sim = sim(model, czas_symulacji);
x = sim.get('x');
t = sim.get('t');
assignin('base', 'x', x);
assignin('base','t', t);
%--------------------------------------------------------------------------
%wykres
figure(1);
plot(t, x);
title('Rozwiązanie symulacyjne dla u(t) = 1(t)')
ylabel('odpowiedź układu');
xlabel('t [s]');
legend('x(t)', 'FontSize', 18);
%--------------------------------------------------------------------------