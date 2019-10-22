#lang at-exp racket

(provide my-site)

(require 
  "../lib/main.rkt"  
  "./home.rkt"  
  "./about.rkt"  
  "./posts.rkt")

(define my-site
  (flatten
    (list
      (bootstrap ;Confusing...
        (site
          (index (page index.html (home)))))

      (about) 

      (my-css)
      posts)))


