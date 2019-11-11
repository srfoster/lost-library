#lang info
(define collection "lost-library")
(define deps '("base" 
               "chess"
               "https://github.com/thoughtstem/website.git"
               "https://github.com/thoughtstem/website-js.git"
               "https://github.com/srfoster/yin-yang-lang.git"
               "https://github.com/srfoster/book-spines.git"))

(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/new-blog.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(stephen))

(define compile-omit-paths '("blog" "main.rkt"))
