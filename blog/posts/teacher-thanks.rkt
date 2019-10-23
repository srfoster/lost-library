#lang at-exp lost-library/post

@(require 
   "./thank-yous/main.rkt"
   2htdp/image)

@paras{
@(preview-img (overlay
                (text "Gratitude" 50 'black)
                (bitmap/url "https://picsum.photos/id/1035/300/300")))
As a teacher, I find myself eternally grateful to my own teachers.  This post is an attempt to say thank you to people I can never repay. 

I must exclude (for now) some of my most influential teachers.  I can only express gratitude if I can put what you taught me into words. 


@(div style: 
      (properties clear: "both"))


@(row
   (col-4
     (post-card 
       (thank-you/matt-willis)))

   (col-4
     (post-card 
       (thank-you/marlena-feco)))

   (col-4
     (post-card 
       (thank-you/kelly-eakin))))


  @(row
     (col-4
       (post-card 
         (thank-you/grace-manning)))

     (col-4
       (post-card 
          (thank-you/michael-landry))))
}
