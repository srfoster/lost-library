#lang racket  

(require lost-library/lib/main)

(require 
   (prefix-in matt:    "./matt-willis.rkt")
   (prefix-in marlena: "./marlena-feco.rkt")
   (prefix-in kelly:   "./kelly-eakin.rkt")
   (prefix-in grace:   "./grace-manning.rkt")
   (prefix-in michael: "./michael-landry.rkt")
   (prefix-in nahla:   "./nahla-beyer.rkt"))

(define/provide (thank-you/matt-willis)
    (page thank-you/matt-willis.rkt
          (my-content "Matt Willis"
             matt:content)))

(define/provide (thank-you/marlena-feco)
    (page thank-you/marlena-feco.rkt
          (my-content "Marlena Feco"
             marlena:content)))

(define/provide (thank-you/kelly-eakin)
    (page thank-you/kelly-eakin.rkt
          (my-content "Kelly Eakin"
             kelly:content)))

(define/provide (thank-you/grace-manning)
    (page thank-you/grace-manning.rkt
          (my-content "Grace Manning"
             grace:content)))


(define/provide (thank-you/michael-landry)
 (page thank-you/michael-landry.rkt
  (my-content "Michael Landry"
   michael:content)))

(define/provide (thank-yous)
  (list
    (thank-you/matt-willis)
    (thank-you/marlena-feco)
    (thank-you/kelly-eakin)
    (thank-you/grace-manning)
    (thank-you/michael-landry)))





