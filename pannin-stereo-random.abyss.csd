;;; random stereo panning
aSig = 
iPanSpeed = 
iPanStart random 0, 1
kPanEnv linseg iPanStart, iPanSpeed, 1-iPanStart, 1, 1-iPanStart
aSigL, aSigR pan2 aSig, kPanEnv 