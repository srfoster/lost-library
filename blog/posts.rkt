#lang racket

(provide posts
         top-posts
         lang-website
         lost-library
         story/meta-story
         teacher-thanks)

(require "../lib/main.rkt"
         "./posts/thank-yous/main.rkt")

(define (lang-website)
  (file->page "#lang website"
              "./posts/lang-website.rkt"))

(define (lost-library)
  (file->page "./posts/lost-library.rkt"))

(define (story/meta-story)
  (file->page "Story/Meta-Story"
              "./posts/story-meta-story.rkt"))

(define (teacher-thanks)
  (file->page "./posts/teacher-thanks.rkt"))

(define (definitions-top)
  (file->page "./posts/definitions.rkt"))

(define top-posts
  (list
    (lost-library)
    (story/meta-story)
    (teacher-thanks)
    (lang-website)
    (definitions-top)))

(define posts
  (list
    top-posts
    (thank-yous)
    (file->child-pages "./posts/definitions.rkt")))






