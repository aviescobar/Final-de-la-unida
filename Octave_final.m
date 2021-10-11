% Octave Script
%School                :Tecnologico de Estudios Superiores de Jilotepec 
%Specialty             :Ingeniería en Sistemas Computacionales 
% Title                :Resolución de desigualdades
% Description          :Script Para resolver tres inecacuaciones, una de primer grado con una incógnita, otra de segundo grado con una incógnita y una que incluya valor absoluto.
% Author               :Victoria Avigail Escobar Noguez 
% Date                 :20210810    
% Version              :1
% Usage                :octave>cd/path/
%		                   :octave>ResolocionDesigualdades
% Notes                :Requiere aplicacion octave, usar la linea de comandos
%                      :https://octaveintro.readthedocs.io/en/latest/index.html

clear
p_numero1= 'Es ribir la inecuacion en la forma general= a x 2 + b x + c';
p_numero2= 'Factorizar el lado izquierdo de la inecuacio ';
p_numero3= 'Hallar los intervalos de prueba ';
p_numero4= 'Representar esos intervalos en una forma numerica ';
 
%Inecuacion de primer grado
disp('Inecuacion de primer grado'); 
pkg load symbolic
syms x   %Este elemento defiene la variable simbolica x
solve (x-6>10)
 x=[-20:0.01:16]
 y=x-16
 subplot(3,3,1)
 plot(x,y,'ro-')
 xlabel('x');
 ylabel('-oo');
title('El intervalo es:');
disp('');

%Inecuacion de segundo grado
disp('Inecuacion de segundo grado');
syms x   %Este elemento defiene la variable simbolica x
solve((x.^2)-3*x+5);
x=[-2:0.1:6]
y=(x.^2)-3*x+5
subplot(3,3,2)
plot(x,y,'r*')
xlabel('eje de las absisas');
ylabel('eje de las ordenadas');
title('El intervalo es:');
disp('');
%Inecuacion con valor absoluto
disp('Inecuacion de valor absoluto');
syms x   %Este elemento defiene la variable simbolica x
abs(9+x)
abs(-9)
x=[-20:20]
y=sqrt(-9)
subplot(3,3,3)
plot(x,y,'ro-')
xlabel('x');
ylabel('-oo');
title('La inecuacion es');