#lang racket

(provide post-card)

(require website/bootstrap
         (only-in 2htdp/image scale)
         (prefix-in book-spine: book-spines) )


(define spines
  (list
    (book-spine:orange-spine)
    (book-spine:yellow-spine)
    (book-spine:green-spine)  
    (book-spine:blue-spine)
    (book-spine:red-spine)))

(define (next-book-spine)
  (set! spines (cons (last spines)
                     (drop-right spines 1)))
  (first spines))

(define (post->title post)
  (define header
    (findf-element (query h1) 
                   (page-content post)))

  (first
    (element->contents header)))

(define (post->preview post)
  (define main
    (findf-element (query div id: "main") 
                   (page-content post)))

  (element->contents main))

(define (post-card post)
  (define title 
    (post->title post)) 

  (define preview
    (post->preview post)) 

  (card 
    (card-body
      (card-title title)
      (card-subtitle "1-minute read, lost library")
      (p 
        (write-img
          style: (properties width: "30px"
                             float: "left"
                             margin-right: "5px")
          (scale 0.25
                 (book-spine:with-text title
                                       (next-book-spine))))

        preview

        (div
          (link-to post "more..."))
        ))))
