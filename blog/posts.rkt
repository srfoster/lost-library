#lang racket

(provide posts
         top-posts
         lang-website
         lost-library
         story/meta-story
         teacher-thanks)

(require "../lib/main.rkt"
         (except-in "./posts/thank-yous.rkt" content))

(require racket/runtime-path)
(define-runtime-path posts-dir "./posts")

(define (lang-website)
  (file->page #:name "#lang website"
              (build-path posts-dir "lang-website.rkt")))

(define (lost-library)
  (file->page (build-path posts-dir "lost-library.rkt")))

(define (story/meta-story)
  (file->page #:name "Story/Meta-Story"
              (build-path posts-dir "story-meta-story.rkt")))

(define (teacher-thanks)
  (file->page (build-path posts-dir "thank-yous.rkt")))

(define (definitions-top)
  (file->page (build-path posts-dir "definitions.rkt")))

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






