#lang at-exp racket

(provide home)

(require 
  "../lib/main.rkt"
  "./posts.rkt")


(define (home)
  (home-content
    "Welcome"
    @(div
    @big-fancy-quote{
       @(br)
       @list{
         Every time my dad went to a bookstore, he left with books.  And for 50 years, he never got rid of one. @(button-link 'data-toggle: "collapse" href: "#read-more" "Read More...")
       }
       

       @(div id: "read-more" class: "collapse"
       @list{
        @(img style: 
             (properties 
               border-radius: "50%"
               width: 300
               padding: "10px")
             align: "right"
             src: "https://ateacherswrites.files.wordpress.com/2011/05/shelves-and-books.jpg")

	 When he died, my mom spent months carting books by the boxload to Goodwill and selling thousands on Ebay.
         @(br) @(br)
	 It was fitting: Like ashes, she scattered his books back to the world.
         @(br) @(br)
	 As a tribute to that @(link-to (lost-library) @b{lost library}), where I spent my early life reading, I've started this blog, where I hope to spend time writing.  
        
       }
       )
    })

    (h1 "Recent")

    (post-card-rows top-posts)))










