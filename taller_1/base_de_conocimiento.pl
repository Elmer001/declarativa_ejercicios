%es/2
es(merlon, mago).
es(aldara, aprendiz).
es(gorik, guerrero).
es(lyra, bibliotecaria).

%sabe/2
sabe(merlon, razonamiento_simbolico).
sabe(gorik, estrategia).
sabe(lyra, registrar_informacion).


%amigo_de/2
amigo_de(lyra, merlon).

%enseña/2
enseña(merlon, aldara).

%ayuda_en/2
ayuda_en(gorik, defensa_del_reino).
ayuda_en(gorik, base_de_conocimiento).
ayuda_en(aldara, base_de_conocimiento).
ayuda_en(lyra, la_gran_biblioteca).
ayuda_en(lyra, base_de_conocimiento).
ayuda_en(merlon, base_de_conocimiento).
ayuda_en(merlon, aprendisaje).

%reglas:
es_maestro(X) :- enseña(X, _), sabe(X, _).
defiende_el_reino(X) :- ayuda_en(X, defensa_del_reino).
ayuda_en_base_de_conocimiento(X) :- ayuda_en(X, base_de_conocimiento).
domina_una_habilidad(X) :- sabe(X, _).
es_aprendiz(X) :- es(X, aprendiz).

%consultas con varibles libres e instanciadas:
%es(X, mago).
%sabe(X, estrategia).
%enseña(merlon, aldara).

%regla recursiva:
%caso base 
contar_colaboradores([], 0).
%caso trivial
contar_colaboradores([R|Resto], N) :-
    contar_colaboradores(Resto, N1),
    N is N1 + 1.

%reglas aplicando \+, ! y fail:
no_es_guerrero(X) :- \+ es(X, guerrero).
unico_rol(X, R) :- es(X, R), !.
mostrar_colaboradores :- ayuda_en(X, base_de_conocimiento),
    write(X), nl,
    fail.