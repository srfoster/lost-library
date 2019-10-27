#lang at-exp lost-library/post

(require 2htdp/image racket/runtime-path)
(define-runtime-path here ".")


(define/provide (definition)
  @div{@b{writ-ing} Any process of leaving changes in the world long enough to be read (at least by oneself, potentially by others).})

@paras{
  @(definition)

  @(hr)
  Related terms: @definition-link{reading}, @definition-link{distributed cognition}.

  I needed a definition that encompassed writing code as well as writing fiction or non-fiction.  But the moment you accept coding as a form of writing, you have to also accept forms of coding like Scratch and Labview -- which involve the manipulation of shapes, colors, images, lines, and connections.  This form of "writing" code borders on drawing.

  And that's okay.  I'm fine with a definition of writing that encompasses drawing.  Yes, in the extreme, the expansion of the definition leads to strange ways of talking: You can "write a painting" or "write a sculpture".  But I'm okay with that too.

  It's handy to have a catch-all word that basically boils down to:

  @centered{
    @bold{Getting stuff out of your mind and into the world.}
  } 

  There are many ways to do so.  Drawing, coding, sculpting.  I'll subsume them all under the process @b{writing}.  

  It's one of the fundamental actions in the process of distributing your cognition.  

  @b{See also...}

  @(rows-of-three
     (path->definition-preview (build-path here "reading.rkt"))
     (path->definition-preview (build-path here "distributed-cognition.rkt"))
)
}
