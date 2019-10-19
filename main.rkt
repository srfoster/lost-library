#lang at-exp racket

(require website/bootstrap
         "./blog/main.rkt")

(render my-site #:to "out")

