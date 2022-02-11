clear all;
close all;
f1 = figure(1);
movegui(f1, 'northwest');
hold on;
grid on;
xlabel('oś x');
ylabel('y = ax^2');
title('Pierwszy wykres')
text(0, 0, 'miejsce przecięcia');
x = [-10:1:10];
a = [-2:.5:2];
m = size(a, 2);
kolor = ['r' 'g' 'b'];
linia = ["-" "--" ":"];
temp = 1;
for i=1:m
    plot(x, a(i)*x.*x, strcat(kolor(mod(i,3)+1),linia(temp)), 'DisplayName','ax^2');
    if mod(i,3) == 0
        temp = temp+1;
    end
end
legend;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Wykres o stałej wartości
f2 = figure(2);
movegui(f2, 'northeast');
x=[0:1:20];
y(1:21)=1;
plot(x, y);

%można też prościej
xline(2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%Wykresy 3D
f3 = figure(3);
movegui(f3, 'south');
[X,Y]=meshgrid(-2:.2:2,-2:.2:2);
Z = X.*exp(-X.^2-Y.^2);
mesh(X, Y, Z);
xlabel('oś X');
ylabel('oś Y');
zlabel('oś Z');
title('Wykres 3D');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%Rozwiązywanie wielomianów
p = [3, -2, -4];    %współczynniki wielomianu
r = roots(p);
r
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%Rozwiązywanie układów równań
%{ 
    Mamy następujący układ równań:
    x + 2y = 5
    3x + 4y = 6
Rozwiązywanie układów równań w Matlabie 
sprowadza się do rozwiązania problemu:
Dane są dwie macierze A i B. Czy istnieje 
macierz X dla której spełnione jest AX=B lub 
XA=B?
Rozwiązaniem pierwszego równania, o ile 
istnieje, jest A\B, natomiast drugiego B/A
%}
A = [1 2; 3 4];
B = [5;6];
X = A\B;
X



