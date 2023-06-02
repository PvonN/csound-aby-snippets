;;; transfer function for waveshaping
;; with extra point for interpolation
f1 0 4097 7 -1 4096 1   ; linear function
f2 0 4097 10 1    	; sine
f3 0 4097 7 -1 2048 -1 0 1 2048 1 ; square wave
f4 0 4097 3 -1 1 -1 0 2  ; second order chebyshev
f5 0 4097 3 -1 1 0 -3 0 4 ; third order chebyshev
f6 0 4097 3 -1 10 0 -7 0 56 0 -112 0 64 ; seventh order chebyshev
f7 0 4097 13 1 1 0 100 100 80 50 90 30 100 20 30 40 0 0 30 40 20 ; chebyshev
f8 0 4097 13 1 1 0 0 0 0 0 90 30 100 20 30 40 0 0 30 40 20 ; chebyshev
f9 0 4097 13 1 1 0 1 -.8 0 .6 0 0 0 .4 0 0 0 0 .1 -.2 -.3 .5 ; chebyshev
f10 0 4097 "tanh" -1 1 0 ; tanh function, subtle saturation
f11 0 4097 "tanh" -5 5 0 ; tanh function, overdrive
f12 0 4097 "tanh" -10  10  0 ; tanh function, symmetrical distortion
f13 0 4097 "tanh" -100 100 0	;symmetrical transfer fuction
