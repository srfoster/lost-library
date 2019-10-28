
#lang at-exp lost-library/post

(require 2htdp/image racket/runtime-path)
(define-runtime-path here ".")

(define/provide (definition)
  @div{@b{com-put-er} A label we give to things in we create or find, which are capable of "reading" coded instructions and acting in ways predictable under some model.})

@paras{
  @(definition) 

  @(hr)

  Note that I'm not including Turing-Completeness in my definition here -- even though many computers are.  Not all computers (nor all programming languages) need to be Turing-Complete to be useful.

  Just to make my definition clear: I'm including things as mundane as a boulder perched at the top of a hill.  The boulder, plus the hill, plus gravity, plus the afordance of being pushable allows us to label the whole complex as a system that "reads" one kind of instruction -- the "push down" instruction.  And the predictable behaviour is that it rolls down the hill.

  Also note that the word "read" is in quotation marks because my definition of @definition-link{reading} requires a mind.  Most things we call computers (and most boulders and hills) do not have one.  


  @b{See also...}

  @(rows-of-three 
     (path->definition-preview (build-path here "computer-coding.rkt"))
     (path->definition-preview (build-path here "writing.rkt"))
     (path->definition-preview (build-path here "reading.rkt")))
}
