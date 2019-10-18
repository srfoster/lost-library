#lang racket

(provide my-nav 
         my-content
         my-css)

(require website/bootstrap)


(define my-nav
  (navbar
    #:brand "Stephen R. Foster"
    (nav-item 
      (nav-link "/about.html"
                "About"))))


(define (my-content title . stuff)
  (content
    #:head 
    (list 
      (include-css (my-css)))
    my-nav 
    (container
      (h1 title)
      stuff)
    (footer style: (properties text-align: "center")
            
            (hr)
            (p (em "Stephen R. Foster 2019")))))


(require racket/runtime-path)

(define-runtime-path 
  css-path "./css")

(define (my-css)
  (page css/custom.css
    (file->string
      (build-path css-path
                  "custom.css"))))
