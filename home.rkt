#lang at-exp racket

(provide home)

(require 
  website/bootstrap
  "./widgets/big-fancy-quote.rkt"
  "./common.rkt"  
  "./posts.rkt"
  "./post-card.rkt")


(define (home)
  (my-content
    "Welcome"
    @big-fancy-quote{
       @list{
         Every time my dad went to a bookstore, he left with books.  And for 50 years, he never got rid of one.... 
       }

       @list{
         When he died, my mom spent months carting books by the boxload to Goodwill and selling thousands on Ebay.
       }


       @list{
         It was fitting: Like ashes, she scattered his books back to the world.
       }

       @list{
         As a tribute to that @(link-to (lost-library) @b{lost library}), where I spent my early life reading, I've started this blog, where I hope to spend time writing.  
       }
       }

    (h1 "Recent")

    (row
      (col-4
        (post-card (lost-library)))
      (col-4
        (post-card (story/meta-story)))
      (col-4
        (post-card (teacher-thanks))))))










