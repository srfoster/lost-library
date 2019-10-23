#lang racket

(provide posts
         lang-website
         lost-library
         story/meta-story
         teacher-thanks)

(require "../lib/main.rkt"
         (prefix-in teacher-thanks:
                    "./posts/teacher-thanks.rkt") 
         (prefix-in story/meta-story:
                    "./posts/story-meta-story.rkt") 
         (prefix-in lost-library:
                    "./posts/lost-library.rkt")
         (prefix-in lang-website:
                    "./posts/lang-website.rkt") 
         "./posts/thank-yous/main.rkt")

(define (lang-website)
  (page posts/lang-website.html
        (my-content
          "#lang website"
          lang-website:content)))

(define (lost-library)
  (page posts/lost-library.html
        (my-content
          "Lost Library"
          lost-library:content)))

(define (story/meta-story)
  (page posts/story-meta-story.html
        (my-content
          "Story/Meta-Story"
          story/meta-story:content
          )))

(define (teacher-thanks)
  (page posts/teacher-thanks.html
        (my-content
          "Teacher Thank You"
          teacher-thanks:content)))

(define posts
  (list
    (lost-library)
    (story/meta-story)
    (teacher-thanks)
    (lang-website)
    (thank-yous)))






