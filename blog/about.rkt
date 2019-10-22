#lang racket

(provide about)

(require "../lib/main.rkt")
(require "./posts.rkt")

(define (about)
  (page about.html
        (my-content "About"
                    (div
                      (p "I'm Stephen R. Foster.  But the unofficial title of this blog is Lost Library")
                      (p "I explain the name in this post...")
                      (post-card (lost-library))

                      (br)
                      (p "In short, it's a bit of a meta-story that contextualizes at least some of the stories on this blog.  I talk a bit more about meta-stories here...")

                      (post-card (story/meta-story))
                      ))))
