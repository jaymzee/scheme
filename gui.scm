#lang racket/gui

(define mydialog
    (instantiate dialog% ("hello world!")))

(send mydialog show #t)