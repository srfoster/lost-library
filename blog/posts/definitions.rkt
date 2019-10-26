#lang at-exp lost-library/post

@(require 2htdp/image racket/runtime-path)

;Makes this post's module suitable for file->child-pages
;  Pattern: Top post for some cluster of child posts reprovides the children that it mentions as the identifier "children"
(provide (rename-out [definitions children]))

(define-runtime-path definitions-dir "./definitions")

(define (definitions)
  (push-path "definitions"
    (directory->pages definitions-dir)))

@paras{
@(preview-img 
   (bitmap/url "https://picsum.photos/id/1073/300/150"))

Some definitions of terms I use a lot in writing or conversation.  

@(div style: 
      (properties clear: "both"))


@(post-card-rows (definitions))
}
