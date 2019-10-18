#lang at-exp racket

(provide home)

(require 
  website/bootstrap
  "./widgets/big-fancy-quote.rkt"
  "./common.rkt"  
  "./posts.rkt")

(require 
  (only-in 2htdp/image scale)
  (prefix-in book-spine: book-spines))

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
        (card 
          (write-img

            style: (properties width: "30px"
                               vertical-align: "left")
            (scale 0.25
                   (book-spine:with-text "Lost Library"
                                         (book-spine:red-spine))))

          (p 
            (ipsum 10))  

          (img 
            style: (properties 
                     float: "left"
                     width: "100px"
                     margin: "5px")
            src: (picsum 50 50))))

      (col-4
        (card 
          (card-img-top)
          (card-body
            (card-title "HI")
            (card-text
              (ipsum 10))
            (button-secondary "Secondary"))))
      (col-4
        (card 
          (card-img-top)
          (card-body
            (card-title "HI")
            (card-text
              (ipsum 10))
            (button-success "Success"))))
      )))










