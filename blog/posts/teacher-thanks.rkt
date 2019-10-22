#lang at-exp lost-library/post

@(require 
   (prefix-in matt:    "./thank-yous/matt-willis.rkt")
   (prefix-in marlena: "./thank-yous/marlena-feco.rkt")
   (prefix-in kelly:   "./thank-yous/kelly-eakin.rkt")
   (prefix-in grace:   "./thank-yous/grace-manning.rkt")
   (prefix-in michael: "./thank-yous/michael-landry.rkt")
   (prefix-in nahla:   "./thank-yous/nahla-beyer.rkt")
   2htdp/image)

@paras{
@(preview-img (overlay
                (text "Gratitude" 50 'black)
                (bitmap/url "https://picsum.photos/id/1035/300/300")))
As a teacher, I find myself eternally grateful to my own teachers.  This post is an attempt to say thank you to people I can never repay. 

I must exclude (for now) some of my most influential teachers.  I can only express gratitude if I can put what you taught me into words. 


@(div style: 
      (properties clear: "both"))

TODO...

@(row
   (col-4
     (post-card (page 
                  thank-yous/matt-willis.html
                  (my-content
                    "Matt Willis"
                    matt:content))))

   (col-4
     (post-card (page 
                  thank-yous/marlena-feco.html
                  (my-content
                    "Marlena Feco"
                    marlena:content))))

   (col-4
     (post-card (page 
                  thank-yous/kelly-eakin.html
                  (my-content
                    "Kelly Eakin"
                    kelly:content)))))


  @(row
     (col-4
       (post-card (page 
                    thank-yous/grace-manning.html
                    (my-content
                      "Grace Manning"
                      grace:content))))

     (col-4
       (post-card (page 
                    thank-yous/michael-landry.html
                    (my-content
                      "Michael Landry"
                      michael:content))))

     (col-4
       (post-card (page 
                    thank-yous/nahla-beyer.html
                    (my-content
                      "Nahla Beyer"
                      nahla:content)))))
}
