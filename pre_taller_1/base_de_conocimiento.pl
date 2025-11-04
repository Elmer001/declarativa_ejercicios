%Parte 1.

% Actividades
cocina(ana).
estudia(maria).
trabaja(juan).
juega(pedro).
trabaja(sofia).
estudia(sofia).
estudia(juan).

% Relaciones de amistad
amigo(ana, juan).
amigo(juan, maria).
amigo(pedro, sofia).

% Relaciones familiares
hermano(ana, pedro).
prima(maria, sofia).

% Rutinas por dia
% Formato: actividad(Persona, Dia, Actividad).

cocina(ana, lunes).
cocina(ana, martes).
cocina(ana, miercoles).
cocina(ana, jueves).
cocina(ana, viernes).
cocina(ana, sabado).
cocina(ana, domingo).

estudia(juan, lunes).
estudia(juan, martes).
estudia(juan, miercoles).
estudia(juan, jueves).
estudia(juan, viernes).

descansa(juan, sabado).
descansa(juan, domingo).

trabaja(pedro, lunes).
trabaja(pedro, martes).
trabaja(pedro, miercoles).
trabaja(pedro, jueves).
trabaja(pedro, viernes).

juega(pedro, sabado).

trabaja(sofia, lunes).
trabaja(sofia, martes).
trabaja(sofia, miercoles).
trabaja(sofia, jueves).
trabaja(sofia, viernes).
trabaja(sofia, sabado).
trabaja(sofia, domingo).

estudia_idiomas(sofia, lunes_noche).
estudia_idiomas(sofia, martes_noche).
estudia_idiomas(sofia, miercoles_noche).
estudia_idiomas(sofia, jueves_noche).
estudia_idiomas(sofia, viernes_noche).
estudia_idiomas(sofia, sabado_noche).
estudia_idiomas(sofia, domingo_noche).

estudia(maria, lunes).
estudia(maria, martes).
estudia(maria, miercoles).
estudia(maria, jueves).
estudia(maria, viernes).
estudia(maria, sabado).

descansa(maria, domingo).


%Parte 2.

% Una persona hace alguna actividad si hay un hecho asociado
realiza(X) :- cocina(X); estudia(X); trabaja(X); juega(X).

% Descansar: alguien descansa si no tiene otra actividad en ese dia
descansa(X, Dia) :- actividad(X, Dia, descansar).

% Parentesco directo
es_familia(X,Y) :- hermano(X,Y); hermano(Y,X); prima(X,Y); prima(Y,X).

%Parte 3.

% Amistad directa o indirecta
% Caso base: si son amigos directos
es_amigo(X, Y) :- amigo(X, Y).
es_amigo(X, Y) :- amigo(Y, X).  

% Caso general: si X es amigo de Z, y Z es amigo de Y
% (esto permite cadenas de amistad)
es_amigo(X, Y) :- amigo(X, Z), es_amigo(Z, Y).

% Miembro en lista
% Caso base: el elemento esta en la cabeza
miembro(X, [X|_]).
% Caso general: el elemento esta en la cola
miembro(X, [_|R]) :- miembro(X, R).

% Rutinas
rutinas(ana, [
    (lunes, cocinar), (martes, cocinar), (miercoles, cocinar),
    (jueves, cocinar), (viernes, cocinar), (sabado, cocinar),
    (domingo, cocinar)
]).

rutinas(juan, [
    (lunes, estudiar), (martes, estudiar), (miercoles, estudiar),
    (jueves, estudiar), (viernes, estudiar), (sabado, descansar),
    (domingo, descansar)
]).

rutinas(pedro, [
    (lunes, trabajar), (martes, trabajar), (miercoles, trabajar),
    (jueves, trabajar), (viernes, trabajar), (sabado, jugar),
    (domingo, descansar)
]).

rutinas(sofia, [
    (lunes, trabajar), (martes, trabajar), (miercoles, trabajar),
    (jueves, trabajar), (viernes, trabajar), (sabado, estudiar),
    (domingo, descansar)
]).

rutinas(maria, [
    (lunes, estudiar), (martes, estudiar), (miercoles, estudiar),
    (jueves, estudiar), (viernes, estudiar), (sabado, estudiar),
    (domingo, descansar)
]).

% Caso base: el dia esta en la cabeza de la lista
buscar_actividad(Dia, [(Dia,Actividad)|_], Actividad).

% Caso general: si no esta, seguimos buscando en la cola
buscar_actividad(Dia, [_|T], Actividad) :-
    buscar_actividad(Dia, T, Actividad).


actividad(Persona, Dia, Actividad) :-
rutinas(Persona, Lista),
buscar_actividad(Dia, Lista, Actividad).


% Invertir lista
% Caso base: lista vacia invertida sigue vacia
invertir([], []).
% Caso general: invertir la cola y luego agregar la cabeza al final
invertir([H|T], R) :-
    invertir(T, RT),
    append(RT, [H], R).


%Parte 5.
% Nuevo personaje: Luis
cocina(luis).
amigo(luis, sofia).
actividad(luis, lunes, trabajar).
actividad(luis, domingo, descansar).

% Nueva regla: dos personas tienen la misma rutina en el mismo dia
misma_rutina(X, Y, Dia) :-
    actividad(X, Dia, A),
    actividad(Y, Dia, A),
    X \= Y.

% Consultas nuevas:
% ?- misma_rutina(juan, maria, lunes).
% ?- misma_rutina(pedro, sofia, domingo).


%Parte 6.
%Para es_amigo:
%caso base -> si son amigos directos.
%caso general -> si existe un tercero que conecta a ambos.
%
%Para miembro:
%caso base -> el elemento esta al inicio de la lista.
%caso general -> el elemento esta mas adelante en la lista.
%
%Para invertir:
%caso base -> lista vacia invertida sigue vacia.
%caso general -> se invierte el resto y luego se agrega la cabeza.

%Resumen rutinas:
%las rutinas por dia se guardaron como listas con pares (dia, actividad) para cada persona.
%luego se hizo una regla recursiva que busca dentro de esa lista el dia que queremos
%si el dia esta al inicio de la lista, devuelve la actividad (caso base)
%si no, sigue revisando el resto hasta encontrarlo (caso general)
%asi se puede preguntar directamente: actividad(Persona, Dia, A)
