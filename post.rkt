#lang at-exp racket

;TODO: Read more about The Reader in the racket guides

(module reader syntax/module-reader
  lost-library/post)

(provide 
  (all-from-out "./lib/main.rkt"))
(require "./lib/main.rkt")

(provide (except-out 
           (all-from-out racket) 
           #%module-begin)
         (rename-out 
           [my-module-begin #%module-begin]))


(require syntax/parse/define)

(define-syntax (my-module-begin stx)
  (syntax-parse stx
    [(_ exprs ... last-expr)
     #'(#%module-begin 
        (provide content)
        exprs ...
        (define content last-expr))]))

