#lang at-exp lost-library/post

(require 2htdp/image racket/runtime-path)
(define-runtime-path here ".")

(define/provide (definition)
  @div{@b{flu-en-cy} })


@paras{
  @(definition)

  @(hr)
  Related terms: @definition-link{writing}, @definition-link{reading}.

  @b{See also...}

  @(rows-of-three 
     (path->definition-preview (build-path here "writing.rkt"))
     (path->definition-preview (build-path here "reading.rkt"))
)
}
