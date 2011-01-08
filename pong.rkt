#lang racket 
(require 2htdp/image)

; Pong project written by Bilgi CS students



(define-struct Ball (x y vx vy radius color mode))
; - x is a Number, x coordinate of Ball
; - y is a Number, y coordinate of Ball
; - vx is a Number, velocity on x plane
; - vy is a Number, velocity on y plane
; - radius is a Number, radius of Ball
; - color is a Color, color of Ball
; - mode is a String, "outline" or "solid"

