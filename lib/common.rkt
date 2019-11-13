#lang racket

(provide my-nav 
         my-content
         home-content
         my-css
         clear
         definition-link)

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
      (include-css "https://cdn.jsdelivr.net/gh/PrismJS/prism@1.17.1/themes/prism.css")
      (include-css (my-css)))
    my-nav 
    (container
      (div id: "main"
        (h1 title)
        stuff))
    (footer style: (properties text-align: "center")
            (hr)
            (p (em "Stephen R. Foster 2019")))
    (include-js "https://cdn.jsdelivr.net/npm/prismjs@1.17.1/prism.min.js")
    (include-js "https://cdn.jsdelivr.net/gh/PrismJS/prism@1.17.1/plugins/autoloader/prism-autoloader.min.js")))

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


(define (clear)
  (div style: (properties clear: "both")))



(define (definition-link to)
  (a href: (~a "/definitions/" (string-replace to " " "-") ".html") 
     (b to)))


