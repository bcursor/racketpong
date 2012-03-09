#lang racket 
(require 2htdp/image)
(require 2htdp/universe)

; Pong project written by Bilgi CS students

(define-struct thing (obj x y vx vy))

(define our-ball (make-thing (circle 20 "solid" "blue")
                             0
                             0
                             0
                             0))

(define plane1 (make-thing (rectangle 40 20 "solid" "red")
                           0
                           0
                           0
                           0))

(define plane2 (make-thing (rectangle 40 20 "solid" "red")
                           0
                           0
                           0
                           0))



(define planes (list plane1 plane2))

;; list-of-things
(define things (append (list our-ball) planes))

(define board (empty-scene 200 200))

(define durum 'a)
(define (draw s) 
  (foldr 
   (λ (thng scn)
     (place-image (thing-obj thng) (thing-x thng) (thing-y thng) scn)) 
   board 
   s))

(big-bang things (to-draw draw))




