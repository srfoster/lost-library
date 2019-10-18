#lang racket

(provide posts
         lost-library
         story/meta-story
         teacher-thanks)

(require website/bootstrap
         "./common.rkt"
         (prefix-in story-meta-story:
                    "./posts/story-meta-story.rkt") 
         (prefix-in lost-library:
                    "./posts/lost-library.rkt"))

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
          (p "teachers are cool thanks yall")
          )))

(define posts
  (list
    (lost-library)
    (story/meta-story)
    (teacher-thanks)))






