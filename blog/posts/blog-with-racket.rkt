#lang at-exp lost-library/post

(provide define-example
         code-demo)

(require syntax/parse/define)

(define examples (hash))
(define (example s) (hash-ref examples s))

(define-syntax (define-example stx)
  (syntax-parse stx
    [(_ (name args ...) body ...)
     #'(begin
         (set! examples (hash-set examples 'name '(define (name args ...) body ...)))
	 (define (name args ...) body ...))]))


(define (page-output p)
  (container
    style: (properties background-color: "#F0F0F0")
    (row 
      (col 
        (span (pre (pathify (page-path p))))
        (div 
          style: (properties width: 300)
          (code (xml->string (page-content p)))))
      (col 
        style: (properties background-color: "white" margin: 10) 
        (page-content p)))))


(define (code-demo stuff)
  (pre (code (substring (pretty-format stuff 1) 1))))


(define-example (home1)
  (page index.html
    (h1 "This is my homepage")))

(define-example (post1)
  (page post1.html
    (container
      (h1 "This is a post"))))

(define-example (home2)
 (page index.html
  (container
   (h1 "This is my homepage")
   (link-to 
    (post1)
    "Awesome Post"))))
      

@paras{

 Note that there is a great tool called @a[href: "https://docs.racket-lang.org/frog/index.html"]{Frog}, which you should definitely use if you want to get started with static-site blogging fast.  I made a package called @b{website} because I wanted a simpler system that was more modular.  

 @b{website} lets me split very large static sites up over multiple files, or even multiple repositories.  The trick is simply that pages are values which can be required and provided like any other Racket value.  Lists of pages can be assembled from various sources (even imported from other Racket packages) and then rendered to a single static site whenever you want.

 This post shows some of the basics.  (Advanced users may want to look at the source code for this @a[href: "https://github.com/srfoster/lost-library/blob/master/blog/posts/blog-with-racket.rkt"]{post itself}, which was -- of course -- written with @b{website})

 @pre{@code{
  #lang racket
  (require website/bootstrap)}}

 Let's assume that's at the top of your file.  Now we just define pages and render them to some output directory.  I usually run @b{raco website-preview} to serve my output directory while I'm developing.  Then, I just refresh my browser whenever I rerender my site.

 @(code-demo (example 'home1))

 We can render that with @pre{@code{(render (list (home1)) #:to "out")}}

 You end up with a site in your @b{out/} directory with these pages:

 @(page-output (home1))

 But that's boring.  Let's add a link to a post:

 @(code-demo (example 'home2))
  
 @(code-demo (example 'post1))

 We can render these together:

 @pre{@code{(render (list (home2) (post1)) #:to "out")}}

 Now the @b{out/} directory contains two pages.

 @(page-output (home2))

 Which links to:

 @(page-output (post1))

 
  
}

