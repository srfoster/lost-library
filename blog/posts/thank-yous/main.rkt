#lang racket  

(require lost-library/lib/main)

(define/provide (thank-yous)
 (list
  (file->page "./matt-willis.rkt")
  (file->page "./marlena-fecho.rkt")
  (file->page "./kelly-eakin.rkt")
  (file->page "./grace-manning.rkt")
  (file->page "./michael-landry.rkt")))





