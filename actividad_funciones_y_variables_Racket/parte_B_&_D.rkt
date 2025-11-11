#lang racket

;; PARTE B

(displayln "1. Area de un rectangulo:")
(define (area_rec b h)
    (* b h)
)
(displayln "Ejemplo:")
(display "Trinagulo con base 5 y altura 3: ")
(area_rec 5 3)
(displayln "")
(displayln "2. Conversion de grados celsius a fahrenheit:")
(define (conversion_temp c)
    (+ (* (/ 9 5) c) 32)
)
(displayln "Ejemplo:")
(display "De 30 °C a °F: ")
(conversion_temp 30)
(displayln "")

(displayln "3. Precio con impuestos")
(define precio-base 300)

(define (iva-monto monto)
    (* monto 0.13)
)

(define (precio-final p)
    (+ p (iva-monto p))
)

(displayln "Ejemplo:")
(display "Precio final de 300 base: ")
(precio-final precio-base)
(displayln "")

(displayln "4. Descuento encadenado")
(define (descuneto10 p)
    (* p 0.10)
)

(define (iva13 p)
    (* p 0.13)
)

(define (precio-total p)
    (+ (- p (descuneto10 p)) (iva13 (- p (descuneto10 p))))
)

(displayln "Ejemplo:")
(display "Precio final aplicando descuento e iva es: ")
(precio-total 100)
(displayln "")

;; PARTE D

(displayln "Desafio final")
(define (calcular-total precio descuento impuesto)
    (+ (- precio (* precio descuento)) (* impuesto (- precio (* precio descuento))))
)

(display "El total a pagar es: ")
(calcular-total 100 0.10 0.13)
(displayln "")