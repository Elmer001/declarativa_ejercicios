#lang racket

(displayln "1. SUMA DE ELEMENTOS DE UNA LISTA")
(define (suma_elementos lista)
    (foldl
        + 0 lista
    )
)

(display "la suma de los elementos es: ")
(suma_elementos '(1 2 3 4 5))
(displayln "")

(displayln "2. FILTRAR MAYORES A UN NUMERO")
(define (mayores n lista)
    (filter
        (lambda (x) (> x n))
        lista
    )
)

(display "los numeros mayores al numero son: ")
(mayores 4 '(5 3 8 1 10))
(displayln "")

(displayln "3. PRODUCTO DE UNA LISTA")
(define (producto_elementos lista)
    (foldl
        * 1 lista
    )
)

(display "el producto de los elmentos es: ")
(producto_elementos '(2 3 4))
(displayln "")

(displayln "4. APLICAR UNA FUNCION A TODOS LOS ELEMENTOS DE UNA LISTA")
(define (transformar_lista f lista)
    (map f lista)
)

(display "la lista transformada es: ")
(transformar_lista (lambda (x) (* 2 x)) '(1 2 3 4))
(displayln "")

(displayln "5. CUADRADO DE LOS ELMENTOS DE UNA LISTA")
(define (cuadrado_lista lista)
    (map (lambda (x) (* x x)) lista)
)

(display "la lista con sus elementos al cuadrado es: ")
(cuadrado_lista '(1 2 3 4 5))
(displayln "")

(displayln "6. DUPLICAR LOS VALORES DE UNA LISTA")
(define (duplicar_elementos lista)
    (map 
        (lambda
            (x) (* 2 x)
        ) 
    lista
    )
)

(display "la nueva lista con los valores duplicados es: ")
(duplicar_elementos '(2 4 6))
(displayln "")

(displayln "7. SELECCIONAR LOS PRIMEROS PARES")
(define (pares_lista lista)
    (filter
        (lambda 
            (x)
            (cond
                [(= (remainder x 2) 0) #t]
                [else #f]
            )
        )
        lista
    )
)

(display "los pares de la lista son: ")
(pares_lista '(1 2 3 4 5 6))
(displayln "")

(displayln "8. CALCULAR EL PROMEDIO DE UNA LISTA")
(define (promedio_lista lista)
    (/
        (foldl + 0 lista)
        (length lista)
    )
)

(display "el promedio de la lista es: ")
(promedio_lista '(4 6 8 10))
(displayln "")