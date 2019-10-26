#lang racket 

(provide
  (all-from-out website/bootstrap)
  (all-from-out "./widgets/big-fancy-quote.rkt")
  (all-from-out "./common.rkt")
  (all-from-out "./typesetting.rkt")
  (all-from-out "./post-card.rkt"))

(require "./widgets/big-fancy-quote.rkt")
(require "./common.rkt")
(require "./typesetting.rkt")
(require "./post-card.rkt")
(require website/bootstrap)



(provide define/provide)
(define-syntax-rule (define/provide (f-name stuff ...)
  body ...)

  (begin (provide f-name)
         (define (f-name stuff ...)
           body ...)))




(provide file->page 
         file->child-pages
         file-name->post-name)

(require syntax/parse/define
   (for-syntax racket/syntax syntax/strip-context))

(define (file-name->post-name name)
 (define last-bit (last (string-split name "/")))
 (string-titlecase 
  (string-replace
   (string-replace 
    (string-replace last-bit ".rkt" "")
    "-" " ")
#px"[./]" "")))

(define-syntax-parser file->page
  [(_ name file)
   (replace-context this-syntax 
    #'(page (list (string-replace file "rkt" "html"))
      (my-content name 
        (let ()
          (local-require (only-in file content))
          content))))]
  [(_ file)
   #'(file->page (file-name->post-name file)
                 file)])



(define-syntax-parser file->child-pages
  [(_ file)
   (replace-context this-syntax 
    #'(let ()
        (local-require (only-in file children))
          (children)))])



