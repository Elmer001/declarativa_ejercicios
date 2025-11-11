#lang racket

;;contar los pares en una lista
(define (contar_pares lista)
    (length
        (filter
            (lambda (x) (= (remainder x 2) 0)) 
            lista
        )
    )
)

(displayln "1. CONTAR PARES")
(display "El total de pares es: ")
(contar_pares '(2 3 6 10 15))
(displayln "")

;;elevar al cuadrado los elementos de una lista y luego sumarlos
(define (suma_cuadrados lista)
    (foldl + 0 (map (lambda (x) (expt x 2)) lista))
)

(displayln "2. SUMA DE CUADRADOS DE UNA LISTA")
(display "La suma de los elementos al cuadrado es: ")
(suma_cuadrados '(2 3 5))
(displayln "")

;;procesar una lista dada una funcion
(define (procesar_lista f lista)
    (list
        lista 
        (map f lista) 
        (foldl + 0 (map f lista))
    )
)

(displayln "3. PROCESAR UNA LISTA DADA UNA FUNCION")
(display "La nueva lista con la original, la procesada por la funcion y la suma de los elementos de la lista procesada es: \n")
(procesar_lista (lambda (x) (+ x 1)) '(1 2 3))
(displayln "")

;;promedio de los numeros positivos en una lista
(define (promedio_positivos lista)
    (/ 
        (exact->inexact (foldl + 0 (filter positive? lista))) 
        (length (filter (lambda (x) (> x 0)) lista))
    )
)

(displayln "4. PROMEDIO DE LOS POSITIVOS DE UNA LISTA")
(display "El promedio es: ")
(promedio_positivos '(2 1 -9))
(displayln "")

;;maximo elmento de una lista
(define (max_elemento lista)
  (foldl 
    (lambda (elem acc)
      (if (> elem acc)
          elem
          acc))
    (first lista)
    lista))

(displayln "4. EL ELEMENTO MAS GRANDE DE UNA LISTA")
(display "El mayor es: ")
(max_elemento '(1 2 5))
(displayln "")

;;comparacion de sacar el cuadrado de un numero en Racket y Prolog

(displayln "5. COMPARACION ENTRE RACKET Y PROLOG EN SACAR EL CUADRADO DE UN NUMERO")
(displayln "cuadrado de un numero en Racket:\n")
(displayln "(define (cuadrado n)
    (* n n)
)\n")

(displayln "cuadrado de un numero en Prolog:\n")
(displayln "cuadrado(X, Y) :- Y is X * X.")

(display "
comparacion entre Racket y Prolog:\r
a simple vista se puede observar que racket\r
lo hace de una manera mas directa usando operadores matematicos,\r
mientras que prolog tiene que definir una cierta logica \r
o relacion entre las variables antes \r
de poder usar el operador matematico\r")