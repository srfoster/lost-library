#lang at-exp lost-library/post


@paras{

  To say the things I wanted to say with this website, I created some technology in the form of a package called @code{website}, which is...

  ...a language for making websites.

 @pre{
  @code{
    #lang racket
    (require website/bootstrap)

    (define site
      (list
        (page index.html
              (h1 "Hello World"))))

    (render site #:to "out")
  } 
 }

 Bootstrap's visual vocabulary is supported.  For example:
 
 @pre{
  @code{
    (button-primary "I'm a button")
  } 
 }
 Gives: 
 @(button-primary "I'm a button")


 @pre{
  @code{
        (card       
          (card-img-top)
          (card-body
            (card-title "I am a card")
            (card-subtitle "with a subtitle")
            (card-text "Lorem ipsum ....")
            (button-primary
              "Learn More")))
   } 
 }
Gives: 
@(div 
   style: (properties width: 300 height: 500)
   (card       
        (card-img-top)
        (card-body
          (card-title "I am a card")
          (card-subtitle "with a subtitle")
          (card-text "Lorem ipsum ....")
          (button-primary
            "Learn More"))))
}

