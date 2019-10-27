#lang at-exp lost-library/post

(require 2htdp/image racket/runtime-path)
(define-runtime-path here ".")

(define/provide (definition)
  @div{@b{cod-ing} Any form of writing with the power to cause changes in the world regardless of whether it is read by other minds.})

@paras{
  @(definition) 

  @(hr)

  @b{See also...}

  @(rows-of-three 
     (path->definition-preview (build-path here "writing.rkt"))
     (path->definition-preview (build-path here "reading.rkt")))
}