#lang at-exp lost-library/post

@(require 
   2htdp/image)

(require racket/runtime-path)
(define-runtime-path thank-yous-dir "./thank-yous")
(define/provide (thank-yous)
 (push-path "thank-yous"
 (directory->pages thank-yous-dir)))

@paras{
@(preview-img (overlay
                (text "Gratitude" 50 'black)
                (bitmap/url "https://picsum.photos/id/1035/300/300")))
As a teacher, I find myself eternally grateful to my own teachers.  This post is an attempt to say thank you to people I can never repay. 

(@bold{Disclaimer:} If you're one of my former teachers reading this and wondering why I haven't written about you...  Remember: I can only express gratitude if I can put what you taught me into words.  Sometimes that can take years for me to figure out.  It's my failing, not yours.)


@(div style: 
      (properties clear: "both"))


@(post-card-rows (thank-yous))
}
