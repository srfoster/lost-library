#lang racket

(provide posts
         lost-library)

(require website/bootstrap
         "./common.rkt")

(define (lost-library)
  (page posts/lost-library.html
        (my-content
          "Lost Library")))

(define posts
  (list
    (lost-library)))
