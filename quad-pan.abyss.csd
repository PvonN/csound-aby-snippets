;;; 4-channel panning
aSigToPan =
;; Left-Right
initc7 1, 2, 0
kPanLeftRight ctrl7 1, 2, 0., 1.
kPanLeftRight port kPanLeftRight, 0.01
;; Front-Rear
initc7 1, 3, 0
kPanFrontRear ctrl7 1, 3, 0., 1.
kPanFrontRear port kPanFrontRear, 0.01
aFront, aRear pan2 aSigToPan, kPanFrontRear
aFrontLeft, aFrontRight pan2 aFront, kPanLeftRight
aRearLeft, aRearRight pan2 aRear, kPanLeftRight 
;; 4-Kanal-Output
outch giOutChn_1, aFrontLeft, giOutChn_2, aFrontRight, giOutChn_3, aRearRight, giOutChn_4, aRearLeft