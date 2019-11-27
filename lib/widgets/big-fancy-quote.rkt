#lang at-exp racket

(provide big-fancy-quote)

(require website/bootstrap)


(define (quote-p . content)
  (p class: "quotation"
     content) 
  )

(define (big-fancy-quote . paras)
  (row
    (col-md-12 
      id: "content"
      (blockquote 
        class: "fancy"

        (map quote-p paras)

        (span class: "quote-footer"
              (img style: (properties padding: "3px"
                                      width: "70px"
                                      object-fit: "cover"
                                      border-radius: "50%")
                   src: "http://stephenfoster.us/user/images/avatar.jpg")
              "Stephen R. Foster"))
      (div style: 
           (properties clear: "both")) 
      
      )))
