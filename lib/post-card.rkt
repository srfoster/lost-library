#lang racket

(provide post-card post-card-rows)

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


  (if header
    (first
      (element->contents header))
    "NO TITLE"
    ))

(define (post->preview post)
  (define main
    (findf-element (query div id: "main") 
                   (page-content post)))


  (if main
    (take (filter-not 
            (or/c 
              (query h1)
              (query br))
            (element->contents main)) 2)
    "NO PREVIEW") 
  )

(define (post-card post)
  (define title 
    (post->title post)) 

  (define preview
    (post->preview post)) 

  (card 
    (card-body
      (card-title 
        (link-to post title))
      (card-subtitle "")
      (p 
        (write-image
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


(define (in-threes l)
  (if (<= (length l) 3)
   (list l)
   (cons (take l 3) 
         (in-threes (drop l 3)))))

(define (post-card-rows posts)
  (map row 
    (in-threes 
      (map (compose col-4 post-card) posts))))



