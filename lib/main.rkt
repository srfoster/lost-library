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




(provide directory->pages
         file->page 
         file->child-pages
         file-name->post-name)

(require syntax/parse/define
   (for-syntax racket/syntax syntax/strip-context))

(define (directory->pages dir)
  (define (is-rkt? p)
    (string-suffix? 
     (~a (last (explode-path p)))
     ".rkt"))

  (map file->page
   (find-files is-rkt? dir)))

(define (file-name->post-name path)
 (define last-bit 
  (~a (last (explode-path path))))
 (string-titlecase 
  (string-replace
   (string-replace 
    (string-replace last-bit ".rkt" "")
    "-" " ")
#px"[./]" "")))

(define (file->page file #:name (name (file-name->post-name file)))
  (define path (~a (last (explode-path (path-replace-extension file #".html")))))

  (page (list path)
	(my-content name 
	  (file->content file))))

(define (file->content file)
  (dynamic-require file 'content))

(define-syntax-parser file->child-pages
  [(_ file)
   (replace-context this-syntax 
    #'(let ()
        (local-require (only-in file children))
          (children)))])



