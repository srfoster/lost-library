#lang at-exp lost-library/post

(require 2htdp/image racket/runtime-path)
(define-runtime-path here ".")

(define/provide (definition)
  @div{@b{cod-ing} Any form of writing intended to alter the behavior of a system -- by writers who have a model of the system in mind.})

@paras{
  @(definition) 

  @(hr)

  @b{What about computers?}

  Yes, it might seem strange to have such a broad definition of coding.  "Shouldn't it mention computers?" some will ask.  Note: I do have a more specific definition of @definition-link{computer-coding}.

  But I left it out of the more general definition.  To tie something as interesting as coding to something as mundane as computers shackles the mind.  It makes people think that coding is something that can only happen on machines.  


  @b{See also...}

  @(rows-of-three 
     (path->definition-preview (build-path here "computer-coding.rkt"))
     (path->definition-preview (build-path here "writing.rkt"))
     (path->definition-preview (build-path here "reading.rkt")))
}
