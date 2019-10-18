#lang info
(define collection "new-blog")
(define deps '("base" 
               "https://github.com/thoughtstem/website.git"
               "https://github.com/srfoster/book-spines.git"))

(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/new-blog.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(thoughtstem))
