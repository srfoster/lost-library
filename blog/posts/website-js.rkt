#lang at-exp lost-library/post


;This is is copy/pasted from blog-with-racket.rkt.  TODO: Extract
(require syntax/parse/define)
(define examples (hash))
(define (example s) (hash-ref examples s))

(define-syntax (define-example stx)
  (syntax-parse stx
    [(_ (name args ...) body ...)
     #'(begin
         (set! examples (hash-set examples 'name '(define (name args ...) body ...)))
	 (define (name args ...) 
                    body 
                    ...))]))

(define (code-demo stuff)
  (pre (code class: "lang-scheme" (substring (pretty-format stuff 1) 1))))


(require website-js/demos/clicker
         website-js/demos/color-picker
         website-js/demos/slider
         website-js)

(define-example (my-clicker)
   (div (clicker button-primary)))

(define-example (color-picker-starter)
   (jumbotron 
     (clicker button-danger)
     (clicker button-success)
     (clicker button-primary)))

(define-example (color-picker-starter-with-cols)
   (jumbotron 
     (row
       (col-4 (clicker button-danger))
       (col-4 (clicker button-success))
       (col-4 (clicker button-primary)))))

(define-example (color-picker-sliders)
  (color-picker
       #:r (lambda (cb)
             (slider #:on-tick cb))
       #:g (lambda (cb)
             (slider #:on-tick cb))
       #:b (lambda (cb)
             (slider #:on-tick cb))))

(define-example (color-picker-weird)
  (color-picker
       #:r (lambda (cb)
             (clicker button-info #:on-click cb))
       #:g (lambda (cb)
             (slider #:on-tick cb))
       #:b (lambda (cb)
             (clicker button-warning
               #:on-click cb))))

(define-example (color-picker-maker)
  (enclose
    (card
      (button-primary on-click: (call 'newPicker)
         "Click me: I make color pickers appear!")
      (hr)
      (div id: (id 'target))
      (template id: (id 'template) 
         (color-picker-sliders)))
    (script ([target (id 'target)]
             [template (id 'template)])
      (function (newPicker)
         (inject-component template target)))))

@paras{
   I'm working on a way to encapsulate HTML, CSS, and JS into reusable components -- much like React.  Here's one now (click it!):

   @(my-clicker)

   This was defined as follows:

   @(js-runtime) @(code-demo (example 'my-clicker))

   The @code{(clicker ...)} part comes from @code{(require website-js/demos/clicker)}.   It is (much like a react component) a building-block for other components, which encapsulates both appearance and behaviour in configurable ways.  

   We can such components building blocks to create new components -- even ones that create multiple instances of the clicker. 

   @(color-picker-starter)

   This was defined as follows:

   @(code-demo (example 'color-picker-starter))

   Or perhaps we want to apply some styling:

   @(color-picker-starter-with-cols)

   This was defined as follows:

   @(code-demo (example 'color-picker-starter-with-cols))

   The @code{row} and @code{col-4} functions come from @code{website/bootstrap} -- as does @code{button-primary}, @code{button-danger}, and @code{button-success}.
   
   Cool.  But everyone knows that the hard part of creating a framework of reusable HTML/CSS/JS snippets is handling the JavaScript stuff.  So let's do more of that.

  Here's one (from @code{(require website-js/demos/color-picker)}) that will (slowly) change the background of the jumbotron as you click the different buttons.

  @(color-picker)

  It's not the best UI.  It takes forever, and you can't decrease the colors.  Better would be with sliders, like this: 

  @(include-css "https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.min.css")

  @(color-picker-sliders)

  This is accomplished by passing the slider component into the color picker component, overriding its defaults.  

  @(code-demo (example 'color-picker-sliders))

  
  We can use the same trick to build weird (confusing) color pickers if we want:

  @(color-picker-weird)

  @(code-demo (example 'color-picker-weird))

  I don't think you should build color pickers that way.  I'm just trying to demonstrate the immediate reusability you get from functions that return components.

  What I @b{do} think you should do is make componets that create other components.  This is easy to do, and each one behaves independently (as you would expect a good JS-components framework to do).

  Here, for example, is a component that produces clicker components -- as many as you like.  It also regesters a callback with them so that it can keep track of the total number of clicks across all of its child-clickers.
  
  @(clicker-maker)

  Here we do the same thing, but now this "meta clicker maker" makes clicker makers, each of which makes clickers, each of which is independntly clickable:

  @(meta-clicker-maker)

  @(color-picker-maker)

  @(code-demo (example 'color-picker-maker))

}





