% Prolog

% EL simbolo de si y solo si es :-
% Ej: descendiente(X,Y) :-  hijo(X,Y)
% ---------------------------------------------------------------
aldea(Rivoria,Aldemir).
% ----------------------------
esposo(Esteban,Mariela).
hijo(Clara,Esteban).
hijo(Rodolfo,Esteban).
hijo(Ismael,Esteban).

esposo(Andres,Clara).
oficio(Andres,Comerciante).
oficio(Clara,Maestra).
hijo(Sofia,Andres).

esposo(Rodolfo,Teresa).
oficio(Rodolfo,Campesino).
oficio(Teresa,Tejedora).
hijo(Lucas,Rodolfo).
hijo(Martina,Rodolfo).
oficio(Lucas,Herrero).

alianza(Ismael,Hector).
oficio(Hector,Herrero).



% -------------------------------------------------------------
aldea(Montelar,Aldemir).
% ------------------------------------------------------------
esposo(Alonso,Beatriz).
hijo(Felipe,Alonso).
hijo(Catalina,Alonso).
hijo(Emilia,Alonso).
oficio(Felipe,Explorador).
oficio(Catalina,Curandera).
oficio(Emilia,Ceramista).

esposo(Andres,Catalina).

% -----------------------------------------------------------------
aldea(Durania,Aldemir).
% ----------------------------------------------------------------
esposo(Mateo,Irene).
oficio(Mateo,Agricultor).
oficio(Irene,Criadora de cabras).
oficio(Irene,vendedora de lacteos).


% ----------------------------
% ALianza
% -------------------------------
alianza(Rivoria,Durania).
rivalidad(Rodolfo,Felipe).
rivalidad(Clara,Catalina).
amistad(Sofia,Lucas).
amistad(Martina,Lucas).
amistad(Martina,Sofia).

% ----------------------------------
% Festividades y Creencias
% ----------------------------------
festividades(Rivoria,Fiesta del Rio).
festividades(Montelar,Ceremonia de la Luna).
festividades(Durania,Feria del Grano).

Creencias(Rivoria,Espiritu del agua).
Creencias(Montelar,Espiritu de la Montana).
Creencias(Durania,Espiritu de la Tierra).





% familia si y solo si tiene esposa o hijos,
