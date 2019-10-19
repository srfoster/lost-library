#lang at-exp racket

(provide my-site)

(require 
  "../lib/main.rkt"  
  "./home.rkt"  
  "./posts.rkt")

(define my-site
  (flatten
    (list
      (bootstrap ;Confusing...
        (site
          (index (page index.html (home)))))

      (page about.html
            (my-content "About"
                        (div
                          (p "I'm Stephen R. Foster.  But the unofficial title of this blog is Lost Library")
                          (p "I explain the name in this post...")
                          (post-card (lost-library))
                          (p "But the short answer is...") 
                          )))

      (my-css)
      posts)))


