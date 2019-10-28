
#lang at-exp lost-library/post

(require 2htdp/image racket/runtime-path)
(define-runtime-path here ".")

(define/provide (definition)
  @div{@b{com-put-er cod-ing} Any form of writing with the power to cause changes in the world regardless of whether it is read by others.})


@paras{
  @(definition) 

  @(hr)

  Compare the definition of @definition-link{coding} -- which doesn't involve computers.

  Still, computers do play an important role.  They give us a way to write things that can cause changes whether or not anyone reads the code, and whether or not anyone is actively thinking about it.  Our programs can happily run even if no one knows about them, and long after they are forgotten. 

  @(rows-of-three 
     (path->definition-preview (build-path here "coding.rkt"))
     (path->definition-preview (build-path here "computer.rkt")))

}
