#lang at-exp racket

(require website/bootstrap
         "./common.rkt"  
         "./home.rkt"  
         "./posts.rkt")

(define my-site
  (flatten
    (list
      (bootstrap
        (site
          (index
            (page index.html (home)))

          (about
            (page about.html
                  (my-content
                    "About")))))
      (my-css)
      posts)))


(render my-site #:to "out")



