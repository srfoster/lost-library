#lang racket 

(provide
  (all-from-out website/bootstrap)
  (all-from-out "./widgets/big-fancy-quote.rkt")
  (all-from-out "./common.rkt")
  (all-from-out "./typesetting.rkt")
  (all-from-out "./post-card.rkt"))

(require "./widgets/big-fancy-quote.rkt")
(require "./common.rkt")
(require "./typesetting.rkt")
(require "./post-card.rkt")
(require website/bootstrap)

(provide define/provide)
(define-syntax-rule (define/provide (f-name stuff ...)
  body ...)

  (begin (provide f-name)
         (define (f-name stuff ...)
           body ...)))
