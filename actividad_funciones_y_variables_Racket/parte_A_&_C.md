# Parte A
1.  Asociaciones simples.
    * a = 5, b = 8, c = 16
    * No, no cambia ya que se debe invocar la funcion que genera el valor de b para efectuar el cambio.

2. Sustitucion simbolica.
    * (suma3 (doble x)) -> (define x 4) -> (suma3 (doble 4)) -> (define (doble n) (* 2 n)) = 8 -> (suma3 8) -> (define (suma3 m) (+ m 3)) -> (suma3 8) = 11

3. Definiciones equivalentes.
    * Si, son equivalentes ya que en ambas se espera un valor x, unicamente que la funcion que usa lambda es una funcion de orden superior, y la primer forma es su forma abreviada, pero al final ambas producen el cuadrado de un numero.

# Parte C
1. No tiene sentido ya que las variables no pueden mutar o reasignarse en este paradigma funcional

2. Funcion como valor:
    * a) Es un nuevo nombre para la funcion sumar, de esta manera no tenemos que escribir la funcion sumar junto a la lambda, ya sumar y operar referencian a la misma funcion.
    * b) Racket permite esto ya que las funciones pueden ser valores, parametros o ser retornadas, agregando mas flexibilidad y abstraccion al programar.

3. En la primera definicion x es una variable con un valor de 5, mientra que en el segundo define es una variable tambien pero que referencia a una funcion la cual devuelve el valor de 5.