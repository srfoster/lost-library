#lang racket

(provide my-nav 
         my-content
         home-content
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
      (include-css "//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/default.min.css")
      (include-css (my-css)))
    my-nav 
    (container
      (div id: "main"
        (h1 title)
        stuff))
    (footer style: (properties text-align: "center")
            (hr)
            (p (em "Stephen R. Foster 2019")))
    (include-js "//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js")
    (script "hljs.initHighlightingOnLoad();")))

(define (home-content title . stuff)
  (content
    #:head 
    (list 
      (include-css (my-css)))
    my-nav 
    (container
      (div id: "home"
        stuff))
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
