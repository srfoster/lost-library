#lang racket

(provide centered
         bold
         emph)

(require website)

(define (centered . content)
  (div style: (properties text-align: "center")
       content))

(define (bold . content)
  (b content))

(define (emph . content)
  (i content))


(define/provide-extensible-element
  preview-img
  write-img
  (class: "preview-image"
 class-join)
  ( style: (properties 
             float: "left"
             margin: "10px") properties-join))



