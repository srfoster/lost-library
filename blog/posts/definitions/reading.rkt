#lang at-exp lost-library/post

(require 2htdp/image racket/runtime-path)
(define-runtime-path here ".")

(define/provide (definition)
  @div{@b{read-ing} Any process of engaging the mind in the act of allowing the world (at least in part) to direct one's thoughts.})

;Includes listening?  (Reading the world...)

@paras{
  @(definition)

  @(hr)
  Related terms: @definition-link{writing}, @definition-link{distributed cognition}.

  @b{See also...}

  @(rows-of-three 
     (path->definition-preview (build-path here "writing.rkt"))
     (path->definition-preview (build-path here "fluency.rkt")))
}
